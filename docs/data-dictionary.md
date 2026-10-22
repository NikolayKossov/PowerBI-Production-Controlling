# Słownik danych

| Tabela | Pole | Typ źródła | Znaczenie / jednostka |
|---|---|---|---|
| orders | `BatchID` | str | klucz |
| orders | `Date` | str | ISO 8601 |
| orders | `ProductID` | str | klucz |
| orders | `LineID` | str | klucz |
| orders | `PlannedUnits` | int | patrz metodyka i nazwa pola |
| orders | `MaterialCostPLN` | float | PLN, bez VAT |
| mes | `BatchID` | str | klucz |
| mes | `TotalUnits` | int | patrz metodyka i nazwa pola |
| mes | `GoodUnits` | int | patrz metodyka i nazwa pola |
| mes | `ScrapUnits` | int | patrz metodyka i nazwa pola |
| mes | `PlannedMinutes` | int | patrz metodyka i nazwa pola |
| mes | `RunMinutes` | float | patrz metodyka i nazwa pola |
| mes | `IdealMinutes` | float | patrz metodyka i nazwa pola |
| mes | `LaborHours` | float | patrz metodyka i nazwa pola |
| mes | `EnergyKWh` | float | patrz metodyka i nazwa pola |
| rates | `LineID` | str | klucz |
| rates | `LaborRate` | int | patrz metodyka i nazwa pola |
| rates | `EnergyRate` | float | patrz metodyka i nazwa pola |
| Date | `Date` | str | ISO 8601 |
| Date | `Year` | int | patrz metodyka i nazwa pola |
| Date | `Month` | int | patrz metodyka i nazwa pola |
| Date | `YearMonth` | str | patrz metodyka i nazwa pola |
| Date | `Quarter` | str | patrz metodyka i nazwa pola |
| Product | `ProductID` | str | klucz |
| Product | `Product` | str | patrz metodyka i nazwa pola |
| Product | `Family` | str | patrz metodyka i nazwa pola |
| Product | `StandardUnitCost` | int | patrz metodyka i nazwa pola |
| Line | `LineID` | str | klucz |
| Line | `Line` | str | patrz metodyka i nazwa pola |
| Line | `Technology` | str | patrz metodyka i nazwa pola |
| Production | `BatchID` | str | klucz |
| Production | `Date` | str | ISO 8601 |
| Production | `ProductID` | str | klucz |
| Production | `LineID` | str | klucz |
| Production | `PlannedUnits` | int | patrz metodyka i nazwa pola |
| Production | `MaterialCostPLN` | float | PLN, bez VAT |
| Production | `TotalUnits` | int | patrz metodyka i nazwa pola |
| Production | `GoodUnits` | int | patrz metodyka i nazwa pola |
| Production | `ScrapUnits` | int | patrz metodyka i nazwa pola |
| Production | `PlannedMinutes` | int | patrz metodyka i nazwa pola |
| Production | `RunMinutes` | float | patrz metodyka i nazwa pola |
| Production | `IdealMinutes` | float | patrz metodyka i nazwa pola |
| Production | `LaborHours` | float | patrz metodyka i nazwa pola |
| Production | `EnergyKWh` | float | patrz metodyka i nazwa pola |
| Production | `LaborCostPLN` | float | PLN, bez VAT |
| Production | `EnergyCostPLN` | float | PLN, bez VAT |
| Production | `ActualCostPLN` | float | PLN, bez VAT |
| Production | `FlexibleBudgetPLN` | int | PLN, bez VAT |
| Production | `StaticBudgetPLN` | int | PLN, bez VAT |
