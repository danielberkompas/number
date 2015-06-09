defmodule Number.Delimit do
  @doc """
  Formats a number with grouped thousands using `delimiter`.

  ## Examples

      iex> Number.Delimit.number_to_delimited(nil)
      nil

      iex> Number.Delimit.number_to_delimited(-234234.234)
      "-234,234.23"

      iex> Number.Delimit.number_to_delimited(12345678)
      "12,345,678"

      iex> Number.Delimit.number_to_delimited(12345678.05)
      "12,345,678.05"

      iex> Number.Delimit.number_to_delimited(12345678, delimiter: '.')
      "12.345.678"

      iex> Number.Delimit.number_to_delimited(12345678, delimiter: ',')
      "12,345,678"

      iex> Number.Delimit.number_to_delimited(12345678.05, separator: ' ')
      "12,345,678 05"

      iex> Number.Delimit.number_to_delimited(98765432.98, delimiter: ' ', separator: ',')
      "98 765 432,98"
  """
  @spec number_to_delimited(number, list) :: String.t
  def number_to_delimited(number, options \\ [])
  def number_to_delimited(nil, _options), do: nil
  def number_to_delimited(number, options) when is_integer(number) or is_float(number) do
    options   = Dict.merge(Number.settings, options)
    prefix    = if number < 0, do: "-", else: ""
    delimited = case is_float(number) do
                  true  -> delimit_float(number, options[:delimiter], options[:separator], options[:precision])
                  false -> delimit_integer(number, options[:delimiter])
                end
    "#{prefix}#{String.Chars.to_string(delimited)}"
  end

  defp delimit_integer(number, delimiter) do
    abs(number)
    |> Integer.to_char_list
    |> :lists.reverse
    |> delimit_integer(delimiter, [])
  end
  defp delimit_integer([a,b,c,d|tail], delimiter, acc) do
    delimit_integer([d|tail], delimiter, [delimiter,c,b,a|acc])
  end
  defp delimit_integer(list, _, acc) do
    :lists.reverse(list) ++ acc
  end

  defp delimit_float(number, delimiter, separator, precision) do
    decimals = isolate_decimals(number, precision)
    integer = number |> trunc |> delimit_integer(delimiter)
    :lists.flatten([integer, separator, decimals])
  end

  defp isolate_decimals(number, precision) do
    [decimals] = :io_lib.format("~.*f", [precision, number - trunc(number)])
    decimals
    |> String.Chars.to_string
    |> String.replace(~r/.*\./, "")
    |> String.to_char_list
  end
end
