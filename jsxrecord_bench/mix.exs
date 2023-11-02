defmodule JSXRecordBench.MixProject do
  use Mix.Project

  def project do
    [
      app: :jsxrecord_bench,
      version: "0.1.0",
      elixir: "~> 1.16-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  defp aliases() do
    [
      encode: ["run script/encode.exs"],
      decode: ["run script/decode.exs"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jsxrecord, path: "../"},
      {:jsx, "~> 3.1"},
      {:jason, "~> 1.4"},
      {:benchee, "~> 1.1"},
      {:benchee_html, "~> 1.0"},
    ]
  end
end
