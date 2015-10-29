defmodule Number.Human do
  @moduledoc """
  Provides functions for converting numbers into more human readable strings.
  """

  import Number.Delimit, only: [number_to_delimited: 2]
  import Number.Macros, only: [number_between: 3]
  
  @increments [ 
    {"Thousand", 1_000},
    {"Million",  1_000_000},
    {"Billion",  1_000_000_000},
    {"Trillion", 1_000_000_000_000},
    {"Quadrillion", 1_000_000_000_000_000}
  ]

  @last List.last(@increments)

  @doc """
  Formats and labels a number with the appropriate English word.

  ## Examples

      iex> Number.Human.number_to_human(123)
      "123"

      iex> Number.Human.number_to_human(1234)
      "1.23 Thousand"

      iex> Number.Human.number_to_human(12345)
      "12.35 Thousand"

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
  """
  def number_to_human(number, options \\ [])
  def number_to_human(number, _options) when not is_number(number) do
    raise ArgumentError, "number must be a float or integer, was #{inspect number}"
  end
  def number_to_human(number, _options) when number <= 999 do
    to_string(number)
  end
  for {label, min} = increment <- @increments do
    max = if increment == @last, do: false, else: min * 999

    def number_to_human(number, options) 
    when number_between(number, unquote(min), unquote(max)) do
      number = number_to_delimited(number / unquote(min), options)
      number <> " " <> unquote(label)
    end
  end

end
