defmodule Number.ConversionTest do
  use ExUnit.Case
  import Number.Conversion
  
  test ".to_float can convert a binary to a float" do
    assert 10.0 == to_float("10.00")
  end

  test ".to_float can convert an integer to a float" do
    assert 10.0 == to_float(10)
  end

  test ".to_float leaves a float alone" do
    assert 10.0 == to_float(10.0)
  end

  test ".to_float cannot natively handle any other types" do
    assert_raise Protocol.UndefinedError, fn ->
      to_float(%{hello: "world"})
    end
  end
end
