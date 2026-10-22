let
    Source = Csv.Document(File.Contents(DataRoot & "/raw/mes.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"BatchID", type text}, {"TotalUnits", Int64.Type}, {"GoodUnits", Int64.Type}, {"ScrapUnits", Int64.Type}, {"PlannedMinutes", Int64.Type}, {"RunMinutes", type number}, {"IdealMinutes", type number}, {"LaborHours", type number}, {"EnergyKWh", type number}}, "en-US")
in
    Typed
