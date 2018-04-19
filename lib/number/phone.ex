defmodule Number.Phone do
  @moduledoc """
  Provides functions to convert numbers into formatted phone number strings.
  """

  import Number.Macros, only: [is_blank: 1]

  @doc """
  Formats a number into a US phone number (e.g., (555) 123-9876). You can
  customize the format in the options list.

  ## Parameters

  * `number` - A float or integer to convert.

  * `options` - A keyword list of options. See the documentation of all
    available options below for more information.

  ## Options

  * `:area_code` - Adds parentheses around the area code if `true`.

  * `:delimiter` - Specifies the delimiter to use (defaults to “-”).

  * `:extension` - Specifies an extension to add to the end of the generated number.

  * `:country_code` - Sets the country code for the phone number.

  Default config for these options can be specified in the `Number`
  application configuration.

      config :number, phone: [
                        area_code: false,
                        delimiter: "-",
                        extension: nil,
                        country_code: nil
                      ]
  ## Examples

      iex> Number.Phone.number_to_phone(nil)
      nil

      iex> Number.Phone.number_to_phone(5551234)
      "555-1234"

      iex> Number.Phone.number_to_phone("5551234")
      "555-1234"

      iex> Number.Phone.number_to_phone(1235551234)
      "123-555-1234"

      iex> Number.Phone.number_to_phone(1235551234, area_code: true)
      "(123) 555-1234"

      iex> Number.Phone.number_to_phone(1235551234, delimiter: " ")
      "123 555 1234"

      iex> Number.Phone.number_to_phone(1235551234, area_code: true, extension: 555)
      "(123) 555-1234 x 555"

      iex> Number.Phone.number_to_phone(1235551234, area_code: true, extension: 555, country_code: 1)
      "+1 (123) 555-1234 x 555"

      iex> Number.Phone.number_to_phone(1235551234, country_code: 1)
      "+1-123-555-1234"

      iex> Number.Phone.number_to_phone("123a456")
      "123a456"

      iex> Number.Phone.number_to_phone(1235551234, country_code: 1, extension: 1343, delimiter: ".")
      "+1.123.555.1234 x 1343"
  """
  @spec number_to_phone(number, list) :: String.t()
  def number_to_phone(number, options \\ [])
  def number_to_phone(nil, _options), do: nil

  def number_to_phone(number, options) do
    options = Keyword.merge(config(), options)

    number
    |> to_string
    |> delimit_number(options[:delimiter], options[:area_code])
    |> prepend_country_code(options[:country_code], options[:delimiter], options[:area_code])
    |> append_extension(options[:extension])
  end

  defp delimit_number(number, delimiter, area_code) when area_code == false do
    {:ok, leading_delimiter} = "^#{Regex.escape(delimiter)}" |> Regex.compile()

    number
    |> String.replace(~r/(\d{0,3})(\d{3})(\d{4})$/, "\\1#{delimiter}\\2#{delimiter}\\3")
    |> String.replace(leading_delimiter, "")
  end

  defp delimit_number(number, delimiter, area_code) when area_code == true do
    String.replace(number, ~r/(\d{1,3})(\d{3})(\d{4}$)/, "(\\1) \\2#{delimiter}\\3")
  end

  defp prepend_country_code(number, country_code, _, _) when is_blank(country_code), do: number

  defp prepend_country_code(number, country_code, delimiter, area_code) do
    if area_code,
      do: "+#{country_code} #{number}",
      else: "+#{country_code}#{delimiter}#{number}"
  end

  defp append_extension(number, extension) when is_blank(extension), do: number

  defp append_extension(number, extension) do
    "#{number} x #{extension}"
  end

  defp config do
    defaults = [
      area_code: false,
      delimiter: "-",
      extension: nil,
      country_code: nil
    ]

    Keyword.merge(defaults, Application.get_env(:number, :phone, []))
  end
end
