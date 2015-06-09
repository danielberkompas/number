defmodule Number do
  defmacro __using__(_) do
    quote do
      import Number.Currency
      import Number.Delimit
    end
  end
end
