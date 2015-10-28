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

  @doc """
  Format numbers using SI notation

  ## Parameters

  * `number` - A value to convert. Can be any value that implements
    `Number.Conversion.to_float/1`.

  * `options` - A keyword list of options. See the documentation below for all
    available options.

  ## Options

  * `:base` - Use 1024 if you wish to format bytes.  Default: 1000

  * `:separator` - The string to place between the scaled number and the
                   prefix + unit. Perhaps you want a space here. Default: ""

  * `:unit` - The unit of measurement, e.g. "M" for Meters. Default: ""

  * `:precision` - The number of decimal places to include. Default: 2

  ## Examples

      iex> Number.Human.number_to_si(1210000000, unit: "W")
      "1.21GW"

      iex> Number.Human.number_to_si(1210000000, unit: "W", precision: 1)
      "1.2GW"

      iex> Number.Human.number_to_si(1210000000, unit: "W", precision: 3, separator: " ")
      "1.210 GW"

      iex> Number.Human.number_to_si(1210000000)
      "1.21G"

  """
  @prefixes [
    {8,  "Y"},   # yotta
    {7,  "Z"},   # zetta
    {6,  "E"},   # exa
    {5,  "P"},   # peta
    {4,  "T"},   # tera
    {3,  "G"},   # giga
    {2,  "M"},   # mega
    {1,  "k"},   # kilo
    {0,  ""},
    {-1, "m"},   # milli
    {-2, "µ"},   # micro
    {-3, "n"},   # nano
    {-4, "p"},   # pico
    {-5, "f"},   # femto
    {-6, "a"},   # atto
    {-7, "z"},   # zepto
    {-8, "y"}    # ycoto
  ]
  for {num, text} = _p <- @prefixes do
    def exponent_to_prefix(number)
    when number_between(number, unquote(num), unquote(num)) do
      unquote(text)
    end
  end
  def number_to_si(number, options \\ [])
  def number_to_si(number, options) do
    options = Dict.merge(number_to_si_config, options)
    number_to_si(number, options[:base], options[:separator], options[:unit], options[:precision])
  end
  defp number_to_si(number, base, separator, unit, precision) do
    if number == 0 do
      exp = 0
    else
      exp = :math.log(abs(number)) / :math.log(base) |> Float.floor |> trunc
    end
    exp = max(exp, -8)
    exp = min(exp, 8)
    prefix = exponent_to_prefix(exp)
    scaled_number = number / :math.pow(base, exp)
    display_number = Float.to_string(scaled_number, decimals: precision)
    display_number <> separator <> prefix <> unit
  end
  defp number_to_si_config do
    defaults = [
      base: 1000,
      separator: "",
      unit: "",
      precision: 2
    ]

    Dict.merge(defaults, Application.get_env(:number, :si, []))
  end
end
