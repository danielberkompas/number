defmodule Number.Decimal do
  @moduledoc false

  # Temporary shim that allow Number to work with <2.0 versions of Decimal.
  #
  # In Decimal 1.5, Decimal.compare/2 would return -1, 1, or 0 decimals.
  # In Decimal >=2.0, Decimal.compare/2 returns :lt, :gt, :eq.
  #
  # See https://github.com/danielberkompas/number/issues/47
  def compare(a, b) do
    result = Decimal.compare(a, b)

    cond do
      result in [:lt, Decimal.new(-1)] ->
        :lt

      result in [:gt, Decimal.new(1)] ->
        :gt

      result in [:eq, Decimal.new(0)] ->
        :eq
    end
  end
end
