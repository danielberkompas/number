defprotocol Number.Conversion do
  @moduledoc "Converts values to formats consumable by Number."

  @doc "Converts a value to a Float."
  def to_float(value)
end

defimpl Number.Conversion, for: BitString do
  def to_float(value) do
    case Float.parse(value) do
      {float, _} -> float
      :error     -> raise ArgumentError, "could not convert #{inspect value} to float"
    end
  end
end

defimpl Number.Conversion, for: Float do
  def to_float(value), do: value
end

defimpl Number.Conversion, for: Integer do
  def to_float(value), do: value * 1.0
end

if Code.ensure_loaded?(Decimal) do
  defimpl Number.Conversion, for: Decimal do
    def to_float(value) do
      {float, _} =
        value
        |> Decimal.to_string
        |> Float.parse
      float
    end
  end
end
