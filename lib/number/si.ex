defmodule Number.SI do
  @moduledoc """
  Provides functions for formatting numbers using SI notation.
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

  * `:trim` - Trim trailing zeros. Default: false

  Default configuration for these options can be specified in the `Number`
  application configuration.
      config :number, si: [
                        separator: " ",
                        precision: 4,
                        trim: true
                      ]

  ## Examples

      iex> Number.SI.format_number(1210000000, unit: "W")
      "1.21GW"

      iex> Number.SI.format_number(1210000000, unit: "W", precision: 1)
      "1.2GW"

      iex> Number.SI.format_number(1210000000, unit: "W", precision: 3, separator: " ")
      "1.210 GW"

      iex> Number.SI.format_number(1210000000, unit: "W", precision: 5, trim: true)
      "1.21GW"

      iex> Number.SI.format_number(1210000000)
      "1.21G"

  """
  @spec format_number(number, list) :: String.t
  def format_number(number, options \\ []) when is_number(number) do
    options = Dict.merge(config, options)
    exp = compute_exponent(number, options[:base])
    prefix = exponent_to_prefix(exp)
    scaled_number = number / :math.pow(options[:base], exp)
    display_number = Float.to_string(scaled_number, decimals: options[:precision])
    if options[:trim], do: display_number = trim(display_number)
    display_number <> options[:separator] <> prefix <> options[:unit]
  end

  defp compute_exponent(number, _) when number == 0, do: 0
  defp compute_exponent(number, base) do
    :math.log(abs(number)) / :math.log(base)
      |> Float.floor
      |> trunc
      |> max(-8)
      |> min(8)
  end

  for {num, text} = _p <- @prefixes do
    def exponent_to_prefix(number) when number == unquote(num), do: unquote(text)
  end

  defp trim(display_number) do
    if String.contains?(display_number, ".") do
      display_number |> String.rstrip(?0) |> String.rstrip(?.)
    else
      display_number
    end
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
