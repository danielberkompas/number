defmodule Number.ConversionTest do
  use ExUnit.Case
  import Number.Conversion

  describe ".to_float/1" do
    test "raises error on invalid bitstring" do
      assert_raise ArgumentError, fn ->
        to_float("helloworld")
      end
    end

    test "converts a binary to a float" do
      assert 10.0 == to_float("10.00")
    end

    test "converts an integer to a float" do
      assert 10.0 == to_float(10)
    end

    test "leaves a float alone" do
      assert 10.0 == to_float(10.0)
    end

    test "cannot natively handle any other types" do
      assert_raise Protocol.UndefinedError, fn ->
        to_float(%{hello: "world"})
      end
    end
  end

  describe ".to_decimal/2" do
    test "converts float to decimal" do
      assert to_decimal(123.45) == Decimal.new(123.45)
    end

    test "leaves decimal alone" do
      assert to_decimal(Decimal.new(123.45)) == Decimal.new(123.45)
    end
  end
end
