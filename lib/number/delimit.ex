defmodule Number.Delimit do
  @moduledoc """
  Provides functions to delimit numbers into strings.
  """

  @doc """
  Formats a number into a string with grouped thousands using `delimiter`.

  ## Parameters

  * `number` - A float or integer to convert.

  * `options` - A keyword list of options. See the documentation of all
    available options below for more information.

  ## Options

  * `:precision` - The number of decimal places to include. Default: 2

  * `:delimiter` - The character to use to delimit the number by thousands.
    Default: ","

  * `:separator` - The character to use to separate the number from the decimal
    places. Default: "."

  Default configuration for these options can be specified in the `Number`
  application configuration.

      config :number, delimit: [
                        precision: 3,
                        delimiter: ",",
                        separator: "."
                      ]

  ## Examples

      iex> Number.Delimit.number_to_delimited(nil)
      nil

      iex> Number.Delimit.number_to_delimited(998.999)
      "999.00"

      iex> Number.Delimit.number_to_delimited(-234234.234)
      "-234,234.23"

      iex> Number.Delimit.number_to_delimited("998.999")
      "999.00"

      iex> Number.Delimit.number_to_delimited("-234234.234")
      "-234,234.23"

      iex> Number.Delimit.number_to_delimited(12345678)
      "12,345,678.00"

      iex> Number.Delimit.number_to_delimited(12345678.05)
      "12,345,678.05"

      iex> Number.Delimit.number_to_delimited(12345678, delimiter: ".")
      "12.345.678.00"

      iex> Number.Delimit.number_to_delimited(12345678, delimiter: ",")
      "12,345,678.00"

      iex> Number.Delimit.number_to_delimited(12345678.05, separator: " ")
      "12,345,678 05"

      iex> Number.Delimit.number_to_delimited(98765432.98, delimiter: " ", separator: ",")
      "98 765 432,98"

      iex> Number.Delimit.number_to_delimited(Decimal.from_float(9998.2))
      "9,998.20"

      iex> Number.Delimit.number_to_delimited "123456789555555555555555555555555"
      "123,456,789,555,555,555,555,555,555,555,555.00"

      iex> Number.Delimit.number_to_delimited Decimal.new("123456789555555555555555555555555")
      "123,456,789,555,555,555,555,555,555,555,555.00"
  """
  @spec number_to_delimited(nil, list) :: nil
  @spec number_to_delimited(Number.t(), list) :: String.t()
  def number_to_delimited(number, options \\ [])
  def number_to_delimited(nil, _options), do: nil

  def number_to_delimited(number, options) do
    float = number |> Number.Conversion.to_float()
    options = Keyword.merge(config(), options)
    prefix = if float < 0, do: "-", else: ""

    delimited =
      case to_integer(number) do
        {:ok, number} ->
          number = delimit_integer(number, options[:delimiter])

          if options[:precision] > 0 do
            decimals = String.pad_trailing("", options[:precision], "0")
            Enum.join([to_string(number), options[:separator], decimals])
          else
            number
          end

        {:error, other} ->
          other
          |> to_string
          |> Number.Conversion.to_decimal()
          |> delimit_decimal(options[:delimiter], options[:separator], options[:precision])
      end

    delimited = String.Chars.to_string(delimited)
    prefix <> delimited
  end

  defp to_integer(integer) when is_integer(integer) do
    {:ok, integer}
  end

  defp to_integer(%{__struct__: Decimal} = decimal) do
    try do
      {:ok, Decimal.to_integer(decimal)}
    rescue
      _ ->
        {:error, decimal}
    end
  end

  defp to_integer(string) when is_binary(string) do
    try do
      {:ok, String.to_integer(string)}
    rescue
      _ ->
        {:error, string}
    end
  end

  defp to_integer(other) do
    {:error, other}
  end

  defp delimit_integer(number, delimiter) do
    abs(number)
    |> Integer.to_charlist()
    |> :lists.reverse()
    |> delimit_integer(delimiter, [])
  end

  defp delimit_integer([a, b, c, d | tail], delimiter, acc) do
    delimit_integer([d | tail], delimiter, [delimiter, c, b, a | acc])
  end

  defp delimit_integer(list, _, acc) do
    :lists.reverse(list) ++ acc
  end

  @doc false
  def delimit_decimal(decimal, delimiter, separator, precision) do
    string =
      decimal
      |> Decimal.round(precision)
      |> Decimal.to_string(:normal)

    [number, decimals] =
      case String.split(string, ".") do
        [number, decimals] -> [number, decimals]
        [number] -> [number, ""]
      end

    decimals = String.pad_trailing(decimals, precision, "0")

    integer =
      number
      |> String.to_integer()
      |> delimit_integer(delimiter)

    separator = if precision == 0, do: "", else: separator
    Enum.join([integer, separator, decimals])
  end

  defp config do
    defaults = [
      delimiter: ",",
      separator: ".",
      precision: 2
    ]

    Keyword.merge(defaults, Application.get_env(:number, :delimit, []))
  end
end
