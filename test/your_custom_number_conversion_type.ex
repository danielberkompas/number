defmodule YourCustomNumberConversionType do
  defstruct []
end

defimpl Number.Conversion, for: YourCustomNumberConversionType do
  @moduledoc false

  def to_float(_value), do: 1_000.0

  def to_decimal(_value), do: Decimal.new("1000.0")
end

# This protocol must be used only in &number_to_phone/2
# Such string (that differs from above and can't be converted into a number) is used
# in order to ensure that other number functions would not rely on this procotol
defimpl String.Chars, for: YourCustomNumberConversionType do
  def to_string(_value), do: "a0000"
end
