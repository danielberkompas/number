defmodule Number.Human do
  @moduledoc """
  Provides functions for converting numbers into more human readable strings.
  """

  import Number.Delimit, only: [number_to_delimited: 2]

  @doc """
  Formats and labels a number with the appropriate English word.

  ## Examples

      iex> Number.Human.number_to_human(123)
      "123"

      iex> Number.Human.number_to_human(1234)
      "1.23 Thousand"

      iex> Number.Human.number_to_human(999001)
      "999.00 Thousand"

      iex> Number.Human.number_to_human(1234567)
      "1.23 Million"

      iex> Number.Human.number_to_human(1234567890)
      "1.23 Billion"

      iex> Number.Human.number_to_human(1234567890123)
      "1.23 Trillion"

      iex> Number.Human.number_to_human(1234567890123456)
      "1.23 Quadrillion"

      iex> Number.Human.number_to_human(1234567890123456789)
      "1,234.57 Quadrillion"

      iex> Number.Human.number_to_human(Decimal.new(5000.0))
      "5.00 Thousand"
  """
  def number_to_human(number, options \\ [])

  def number_to_human(number, options) when not is_number(number) do
    if Number.Conversion.impl_for(number) do
      number
      |> Number.Conversion.to_float
      |> number_to_human(options)
    else
      raise ArgumentError, """
      number must be a float or integer, or implement `Number.Conversion` protocol,
      was #{inspect number}"
      """
    end
  end

  def number_to_human(number, options)
  when number > 999 and number < 1_000_000 do
    delimit(number, 1_000, "Thousand", options)
  end

  def number_to_human(number, options)
  when number >= 1_000_000 and number < 1_000_000_000 do
    delimit(number, 1_000_000, "Million", options)
  end

  def number_to_human(number, options)
  when number >= 1_000_000_000 and number < 1_000_000_000_000 do
    delimit(number, 1_000_000_000, "Billion", options)
  end

  def number_to_human(number, options)
  when number >= 1_000_000_000_000 and number < 1_000_000_000_000_000 do
    delimit(number, 1_000_000_000_000, "Trillion", options)
  end

  def number_to_human(number, options)
  when number >= 1_000_000_000_000_000 do
    delimit(number, 1_000_000_000_000_000, "Quadrillion", options)
  end

  def number_to_human(number, _options) do
    to_string(number)
  end

  defp delimit(number, divisor, label, options) do
    number = number_to_delimited(number / divisor, options)
    number <> " " <> label
  end
end
