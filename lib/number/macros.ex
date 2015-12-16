defmodule Number.Macros do
  @moduledoc false

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
end
