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
        # Use :erlang.apply/3 to bypass the compile-time type checker
        :erlang.apply(Number.Conversion, :to_float, [%{hello: "world"}])
      end
    end
  end

  describe ".to_decimal/1" do
    test "converts float to decimal" do
      assert to_decimal(123.45) == Decimal.from_float(123.45)
    end

    test "leaves decimal alone" do
      assert to_decimal(Decimal.from_float(123.45)) == Decimal.from_float(123.45)
    end

    test "converts high-precision string to decimal" do
      {expected, ""} = Decimal.parse("0.02053473047423571351409743977530517", max_digits: 100)
      assert to_decimal("0.02053473047423571351409743977530517") == expected
    end

    test "raises on invalid string" do
      assert_raise ArgumentError, fn ->
        to_decimal("not_a_number")
      end
    end
  end
end
