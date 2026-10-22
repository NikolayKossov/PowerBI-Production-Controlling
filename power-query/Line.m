let
    Source = Csv.Document(File.Contents(DataRoot & "/dimensions/Line.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"LineID", type text}, {"Line", type text}, {"Technology", type text}}, "en-US")
in
    Typed
