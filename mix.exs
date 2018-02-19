defmodule Number.Mixfile do
  use Mix.Project

  def project do
    [
      app: :number,
      description: "Convert numbers to various string formats, such as currency",
      version: "0.5.4",
      elixir: "~> 1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      docs: docs(),
      dialyzer: [ignore_warnings: "dialyzer.ignore-warnings"]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:decimal, "~> 1.0"},
      {:decimal_arithmetic, "~> 0.1"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:inch_ex, ">= 0.0.0", only: :docs},
      {:dialyxir, "~> 0.5", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      readme: "README.md",
      main: Number
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "CHANGELOG.md", "LICENSE"],
      maintainers: ["Daniel Berkompas"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/danielberkompas/number"
      }
    ]
  end
end