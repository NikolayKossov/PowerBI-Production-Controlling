let
    Source = Csv.Document(File.Contents(DataRoot & "/dimensions/Product.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"ProductID", type text}, {"Product", type text}, {"Family", type text}, {"StandardUnitCost", Int64.Type}}, "en-US")
in
    Typed
