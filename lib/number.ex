defmodule Number do
  @moduledoc """
  `Number` is a pretentiously-named library which provides functions to convert
  numbers into a variety of different formats. Ultimately, it aims to be a
  partial or complete clone of [ActionView::Helpers::NumberHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html)
  from Rails.

  If you want to import all of the functions provided by `Number`, simply `use`
  it in your module:

      defmodule MyModule do
        use Number
      end

  More likely, you'll want to import the functions you want from one of
  `Number`'s submodules.

      defmodule MyModule do
        import Number.Currency
      end

  ## Configuration

  Some of `Number`'s behavior can be configured through Mix. Each submodule
  contains documentation on how to configure it.
  """

  @type t :: number | Decimal.t()

  @doc false
  defmacro __using__(_) do
    quote do
      import Number.Currency
      import Number.Delimit
      import Number.Phone
      import Number.Percentage
      import Number.Human
    end
  end

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
