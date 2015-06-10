defmodule Number.Currency do
  @moduledoc """
  Provides functions for converting numbers into formatted currency strings.
  """

  import Number.Delimit, only: [number_to_delimited: 2]

  @doc """
  Converts a number to a formatted currency string.

  ## Options

  * `:unit` - The currency symbol to use. Default: "$"

  * `:precision` - The number of decimal places to include. Default: 2

  * `:delimiter` - The character to use to delimit the number by thousands. 
    Default: ","

  * `:separator` - The character to use to separate the number from the decimal
    places. Default: "."

  * `:format` - The format of the number. This can be used to put the currency 
    symbol in a different place.  See the examples for usage. There are two 
    supported format string placeholders:
      * `%u` - Represents the currency symbol, or unit.
      * `%n` - Represents the number.

  * `:negative_format` - The format of the number when it is negative. Uses the 
    same formatting placeholders as the `:format` option.

  Default config for these options can be specified in the `Number`
  application configuration.

      config :number, currency: [
                        unit: "£",
                        precision: 2,
                        delimiter: ",",
                        separator: ".",
                        format: "%u%n",           # "£30.00"
                        negative_format: "(%u%n)" # "(£30.00)"
                      ]

  ## Examples

      iex> Number.Currency.number_to_currency(nil)
      nil

      iex> Number.Currency.number_to_currency(1000)
      "$1,000"

      iex> Number.Currency.number_to_currency(1000, unit: "£")
      "£1,000"

      iex> Number.Currency.number_to_currency(-1000)
      "-$1,000"

      iex> Number.Currency.number_to_currency(-234234.23)
      "-$234,234.23"

      iex> Number.Currency.number_to_currency(1234567890.50)
      "$1,234,567,890.50"

      iex> Number.Currency.number_to_currency(1234567890.506)
      "$1,234,567,890.51"

      iex> Number.Currency.number_to_currency(1234567890.506, precision: 3)
      "$1,234,567,890.506"

      iex> Number.Currency.number_to_currency(-1234567890.50, negative_format: "(%u%n)")
      "($1,234,567,890.50)"

      iex> Number.Currency.number_to_currency(1234567890.50, unit: "R$", separator: ",", delimiter: "")
      "R$1234567890,50"

      iex> Number.Currency.number_to_currency(1234567890.50, unit: "R$", separator: ",", delimiter: "", format: "%n %u")
      "1234567890,50 R$"
  """
  @spec number_to_currency(number, list) :: String.t
  def number_to_currency(number, options \\ [])
  def number_to_currency(nil, _options), do: nil
  def number_to_currency(number, options) do
    options = Dict.merge(config, options)
    {number, format} = get_format(number, options)
    number = number_to_delimited(number, options)

    format
    |> String.replace(~r/%u/, options[:unit])
    |> String.replace(~r/%n/, number)
  end

  defp get_format(number, options) when number < 0 do
    {abs(number), options[:negative_format] || "-#{options[:format]}"}
  end
  defp get_format(number, options), do: {number, options[:format]}

  defp config do
    defaults = [
      delimiter: ",",
      separator: ".",
      precision: 2,
      unit: "$",
      format: "%u%n"
    ]

    Dict.merge(defaults, Application.get_env(:number, :currency, []))
  end
end
