defmodule Currency.Mixfile do
  use Mix.Project

  def project do
    [app: :number,
     description: "Convert numbers to various string formats, such as currency",
     version: "0.4.0",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps,
     docs: docs]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.11", only: :docs},
      {:inch_ex, "~> 0.3", only: :docs}
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
      files: ["lib", "mix.exs", "README.md", "CHANGELOG.md", "SIGNED.md", "LICENSE", ".kbignore"],
      maintainers: ["Daniel Berkompas"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/danielberkompas/number"
      }
    ]
  end
end
