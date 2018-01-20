defmodule GpxParser.CLI do
  def main(args) do
    args
    |> Enum.each(&parse_file/1)
  end

  @doc """
  引数のファイルを読み込んでトラックポイントを抽出する

  トラックポイント (trkpt) だけを抽出して、とりあえず inspect してる。
  複数のトラック (trk) で記録されていても、ベタで出力している。
  """
  def parse_file(filename) do
    {:ok, body} = File.read(filename)
    body
    |> GpxParser.parse()
    |> Enum.each(&IO.inspect/1)
  end
end
