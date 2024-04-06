defmodule Number.Mixfile do
  use Mix.Project

  @source_url "https://github.com/danielberkompas/number"
  @version "1.0.5"

  def project do
    [
      app: :number,
      description: "Convert numbers to various string formats, such as currency",
      version: @version,
      elixir: "~> 1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      lockfile: lockfile(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.travis": :test
      ],
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:decimal, "~> 1.5 or ~> 2.0"},
      {:excoveralls, ">= 0.16.0", only: :test},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test]},
      {:inch_ex, ">= 0.0.0", only: [:dev, :test]}
    ]
  end

  defp docs do
    [
      main: "readme",
      source_url: @source_url,
      source_ref: "v#{@version}",
      extras: ["CHANGELOG.md", "README.md"]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "CHANGELOG.md", "LICENSE"],
      maintainers: ["Daniel Berkompas"],
      licenses: ["MIT"],
      links: %{
        "Changelog" => "https://hexdocs.pm/number/changelog.html",
        "GitHub" => @source_url
      }
    ]
  end

  defp lockfile() do
    case System.get_env("DECIMAL_VERSION") do
      "1" -> "mix-decimal1.lock"
      _ -> "mix.lock"
    end
  end
end
