defmodule Number.SI do
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

      iex> Number.SI.format_number(1210000000, unit: "W")
      "1.21GW"

      iex> Number.SI.format_number(1210000000, unit: "W", precision: 1)
      "1.2GW"

      iex> Number.SI.format_number(1210000000, unit: "W", precision: 3, separator: " ")
      "1.210 GW"

      iex> Number.SI.format_number(1210000000)
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
    def exponent_to_prefix(number) when number == unquote(num), do: unquote(text)
  end
  
  def format_number(number, options \\ []) when is_number(number) do
    options = Dict.merge(config, options)
    format_number(number, options[:base], options[:separator], options[:unit], options[:precision])
  end
  
  defp format_number(number, base, separator, unit, precision) do
    if number == 0 do
      exp = 0
    else
      exp = :math.log(abs(number)) / :math.log(base) |> Float.floor |> trunc
    end
    exp = exp |> max(-8) |> min(8)
    prefix = exponent_to_prefix(exp)
    scaled_number = number / :math.pow(base, exp)
    display_number = Float.to_string(scaled_number, decimals: precision)
    display_number <> separator <> prefix <> unit
  end
  
  defp config do
    defaults = [
      base: 1000,
      separator: "",
      unit: "",
      precision: 2
    ]

    Dict.merge(defaults, Application.get_env(:number, :si, []))
  end
  
end
