defmodule Number do
  defmacro __using__(_) do
    quote do
      import Number.Currency
      import Number.Delimit
    end
  end

  def settings do
    [
      unit:      Application.get_env(:number, :unit) || "$",
      delimiter: Application.get_env(:number, :delimiter) || ",",
      separator: Application.get_env(:number, :separator) || ".",
      precision: Application.get_env(:number, :precision) || 2,
      format:    "%u%n"
    ]
  end
end
