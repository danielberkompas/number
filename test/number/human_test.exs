defmodule Number.HumanTest do
  use ExUnit.Case
  import Number.Human

  doctest Number.Human

  test ".number_to_si" do

    assert number_to_si(1337.0e-16) == "133.70f"
    assert number_to_si(1337.0e-15) == "1.34p"
    assert number_to_si(1337.0e-14) == "13.37p"
    assert number_to_si(1337.0e-13) == "133.70p"
    assert number_to_si(1337.0e-12) == "1.34n"
    assert number_to_si(1337.0e-11) == "13.37n"
    assert number_to_si(1337.0e-10) == "133.70n"
    assert number_to_si(1337.0e-9) == "1.34µ"
    assert number_to_si(1337.0e-8) == "13.37µ"
    assert number_to_si(1337.0e-7) == "133.70µ"
    assert number_to_si(1337.0e-6) == "1.34m"
    assert number_to_si(1337.0e-5) == "13.37m"
    assert number_to_si(1337.0e-4) == "133.70m"
    assert number_to_si(1337.0e-3) == "1.34"
    assert number_to_si(1337.0e-2) == "13.37"
    assert number_to_si(1337.0e-1) == "133.70"
    assert number_to_si(1337.0) == "1.34k"
    assert number_to_si(1337.0e1) == "13.37k"
    assert number_to_si(1337.0e2) == "133.70k"
    assert number_to_si(1337.0e3) == "1.34M"
    assert number_to_si(1337.0e4) == "13.37M"
    assert number_to_si(1337.0e5) == "133.70M"
    assert number_to_si(1337.0e6) == "1.34G"
    assert number_to_si(1337.0e7) == "13.37G"
    assert number_to_si(1337.0e8) == "133.70G"
    assert number_to_si(1337.0e9) == "1.34T"
    assert number_to_si(1337.0e10) == "13.37T"
    assert number_to_si(1337.0e11) == "133.70T"
    assert number_to_si(1337.0e12) == "1.34P"
    assert number_to_si(1337.0e13) == "13.37P"
    assert number_to_si(1337.0e14) == "133.70P"
    assert number_to_si(1337.0e15) == "1.34E"
    assert number_to_si(1337.0e16) == "13.37E"
    assert number_to_si(1337.0e17) == "133.70E"
    assert number_to_si(1337.0e18) == "1.34Z"
    assert number_to_si(1337.0e19) == "13.37Z"

    # some options!
    assert number_to_si(1337.0e-1, precision: 0) == "134"
    assert number_to_si(1337.0e-1, precision: 0, unit: "M") == "134M"
    assert number_to_si(1337.0e-1, precision: 0, unit: "M", separator: " ") == "134 M"

    # handle zero correctly
    assert number_to_si(0) == "0.00"
    assert number_to_si(0.0, precision: 1, unit: "M", separator: " ") == "0.0 M"
    assert number_to_si(0.0, precision: 0, unit: "M", separator: " ") == "0 M"

    # base for formatting bytes
    assert number_to_si(23.456e8, base: 1024, unit: "B") == "2.19GB"

    # handle really big and really small numbers
    assert number_to_si(1337.0e30, precision: 0) == "1337000000Y"
    assert number_to_si(1337.0e-30, precision: 4) == "0.0013y"

    # handle negative numbers
    assert number_to_si(-1337.0e8) == "-133.70G"

  end
end
