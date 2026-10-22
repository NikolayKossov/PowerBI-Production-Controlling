let
    A = Table.NestedJoin(stg_orders, {"BatchID"}, stg_mes, {"BatchID"}, "MES", JoinKind.LeftOuter),
    B = Table.ExpandTableColumn(A, "MES", {"TotalUnits","GoodUnits","ScrapUnits","PlannedMinutes","RunMinutes","IdealMinutes","LaborHours","EnergyKWh"}),
    C = Table.NestedJoin(B, {"LineID"}, stg_rates, {"LineID"}, "Rates", JoinKind.LeftOuter),
    D = Table.ExpandTableColumn(C, "Rates", {"LaborRate","EnergyRate"}),
    E = Table.NestedJoin(D, {"ProductID"}, Product, {"ProductID"}, "Standard", JoinKind.LeftOuter),
    F = Table.ExpandTableColumn(E, "Standard", {"StandardUnitCost"}),
    Checked = if Table.RowCount(F) <> Table.RowCount(stg_orders) or List.Contains(F[GoodUnits], null) or List.Contains(F[LaborRate], null) or List.Contains(F[StandardUnitCost], null) then error "Missing/duplicate MES, product or rate key" else F,
    G = Table.AddColumn(Checked, "LaborCostPLN", each Number.Round([LaborHours]*[LaborRate],2), type number),
    H = Table.AddColumn(G, "EnergyCostPLN", each Number.Round([EnergyKWh]*[EnergyRate],2), type number),
    I = Table.AddColumn(H, "ActualCostPLN", each Number.Round([MaterialCostPLN]+[LaborCostPLN]+[EnergyCostPLN],2), type number),
    J = Table.AddColumn(I, "FlexibleBudgetPLN", each [GoodUnits]*[StandardUnitCost], type number),
    K = Table.AddColumn(J, "StaticBudgetPLN", each [PlannedUnits]*[StandardUnitCost], type number)
in K
