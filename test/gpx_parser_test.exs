defmodule GpxParserTest do
  use ExUnit.Case
  doctest GpxParser

  describe "parse" do
    test "empty" do
      assert GpxParser.parse("<?xml version=\"1.0\" encoding=\"UTF-8\"?><gpx></gpx>") == []
    end
  end
end
