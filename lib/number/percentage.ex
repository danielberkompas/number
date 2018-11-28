defmodule Number.Percentage do
  @moduledoc """
  Provides functions for converting numbers into percentages.
  """

  import Number.Delimit, only: [number_to_delimited: 2]

  @doc """
  Formats a number into a percentage string.

  ## Parameters

  * `number` - A value to convert. Can be any value that implements
    `Number.Conversion.to_float/1`.

  * `options` - A keyword list of options. See the documentation below for all
    available options.

  ## Options

  * `:precision` - The number of decimal places to include. Default: 3

  * `:delimiter` - The character to use to delimit the number by thousands.
    Default: ","

  * `:separator` - The character to use to separate the number from the decimal
    places. Default: "."

  Default configuration for these options can be specified in the `Number`
  application configuration.

      config :number, percentage: [
                        delimiter: ",",
                        separator: ".",
                        precision: 2
                      ]

  ## Examples

      iex> Number.Percentage.number_to_percentage(100)
      "100.000%"

      iex> Number.Percentage.number_to_percentage("98")
      "98.000%"

      iex> Number.Percentage.number_to_percentage(100, precision: 0)
      "100%"

      iex> Number.Percentage.number_to_percentage(1000, delimiter: '.', separator: ',')
      "1.000,000%"

      iex> Number.Percentage.number_to_percentage(302.24398923423, precision: 5)
      "302.24399%"

      iex> Number.Percentage.number_to_percentage(Decimal.from_float(59.236), precision: 2)
      "59.24%"
  """
  @spec number_to_percentage(number, Keyword.t()) :: String.t()
  def number_to_percentage(number, options \\ [])

  def number_to_percentage(number, options) do
    options = Keyword.merge(config(), options)
    number = number_to_delimited(number, options)
    number <> "%"
  end

  defp config do
    defaults = [
      delimiter: ",",
      separator: ".",
      precision: 3
    ]

    Keyword.merge(defaults, Application.get_env(:number, :percentage, []))
  end
end
