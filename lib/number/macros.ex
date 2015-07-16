defmodule Number.Macros do
  @moduledoc """
  Macros used internally by `Number`. These may change at any time, so **do not
  depend on them in your projects.**
  """

  @doc """
  Determines whether a given value is blank or not. A value is considered blank
  if it is `" "`, `""`, or `nil`.

  ## Example

      iex> Number.Macros.is_blank(" ")
      true

      iex> Number.Macros.is_blank("")
      true

      iex> Number.Macros.is_blank(nil)
      true

      iex> Number.Macros.is_blank("hello world")
      false

      iex> Number.Macros.is_blank(123)
      false

  This macro can also be used in guards:

      def foo(bar) when is_blank(bar), do: # ...
  """
  defmacro is_blank(value) do
    quote do
      unquote(value) in [" ", "", nil]
    end
  end

  @doc """
  Determines whether a number is between two given values.

  ## Parameters

  * `number`: the number to check. May be a `Float` or `Integer`.

  * `min`: the `number` must be greater than this value.

  * `max`: the `number` must be less than this value. If `false` is passed for
    `max`, then `number_between/3` will only check that `number` is greater than
    `min`.

  ## Examples

      iex> Number.Macros.number_between(10, 5, 20)
      true

      iex> Number.Macros.number_between(1, 0, false)
      true

      iex> Number.Macros.number_between(10, 20, 30)
      false
  """
  defmacro number_between(number, min, max) do
    if max do
      quote do
        unquote(number) >= unquote(min) and
        unquote(number) <= unquote(max)
      end
    else
      quote do
        unquote(number) >= unquote(min)
      end
    end
  end
end
