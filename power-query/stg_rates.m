let
    Source = Csv.Document(File.Contents(DataRoot & "/raw/rates.csv"), [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Typed = Table.TransformColumnTypes(Headers, {{"LineID", type text}, {"LaborRate", Int64.Type}, {"EnergyRate", type number}}, "en-US")
in
    Typed
