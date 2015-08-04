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

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.7", only: :docs},
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
      contributors: ["Daniel Berkompas"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/danielberkompas/number"
      }
    ]
  end
end
