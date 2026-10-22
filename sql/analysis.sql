-- SQLite; run: python scripts/validate.py
-- Read-only analysis of the independently loaded curated tables.
SELECT l.Line, SUM(p.ActualCostPLN) AS Actual, SUM(p.FlexibleBudgetPLN) AS FlexibleBudget, SUM(p.ActualCostPLN-p.FlexibleBudgetPLN) AS EfficiencyVariance, SUM(p.FlexibleBudgetPLN-p.StaticBudgetPLN) AS VolumeVariance, SUM(p.ActualCostPLN)/NULLIF(SUM(p.GoodUnits),0) AS UnitCost FROM Production p JOIN Line l ON p.LineID=l.LineID GROUP BY l.Line;
