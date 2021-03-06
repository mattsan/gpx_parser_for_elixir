defmodule GpxParser.Mixfile do
  use Mix.Project

  def project do
    [
      app: :gpx_parser,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sweet_xml, "~> 0.6.5"}
    ]
  end

  defp escript do
    [main_module: GpxParser.CLI]
  end
end
