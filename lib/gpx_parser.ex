defmodule GpxParser do
  @moduledoc """
  Documentation for GpxParser.
  """

  import SweetXml

  def parse(gpx) do
    gpx
    |> stream_tags(:trkpt)
    |> Enum.map(&track_point/1)
  end

  @doc """
  トラックポイントの要素を取り出す。

  取り出す要素は 軽度、緯度、高度、時刻、速度 の五つ。
  """
  def track_point({:trkpt, trkpt}) do
    xpath(
      trkpt,
      ~x"//trkpt",
      lat: ~x"./@lat",
      lon: ~x"./@lon",
      ele: ~x"./ele/text()",
      time: ~x"./time/text()",
      speed: ~x"./speed/text()"
    )
  end
end
