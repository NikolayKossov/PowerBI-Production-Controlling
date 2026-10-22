let
    Source = Csv.Document(File.Contents(DataRoot & "/raw/orders.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"BatchID", type text}, {"Date", type date}, {"ProductID", type text}, {"LineID", type text}, {"PlannedUnits", Int64.Type}, {"MaterialCostPLN", type number}}, "en-US")
in
    Typed
