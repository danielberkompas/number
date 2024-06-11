defmodule YourCustomNumberConversionType do
  defstruct []
end

defimpl Number.Conversion, for: YourCustomNumberConversionType do
  @moduledoc false

  def to_float(_value), do: 1_000.0

  def to_decimal(_value), do: Decimal.new("1000.0")
end

# For the number_to_phone function
defimpl String.Chars, for: YourCustomNumberConversionType do
  def to_string(_value), do: "1000"
end
