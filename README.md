[![Deps Status](https://beta.hexfaktor.org/badge/all/github/danielberkompas/number.svg)](https://beta.hexfaktor.org/github/danielberkompas/number)

`Number` is a pretentiously-named [Elixir](https://github.com/elixir-lang/elixir)
library which provides functions to convert numbers into a variety of different 
formats. Ultimately, it aims to be a partial or complete clone of [ActionView::Helpers::NumberHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/NumberHelper.html)
from Rails.

```elixir
Number.Currency.number_to_currency(2034.46)
"$2,034.46"

Number.Phone.number_to_phone(1112223333, area_code: true, country_code: 1)
"+1 (111) 222-3333"

Number.Percentage.number_to_percentage(100, precision: 0)
"100%"

Number.Human.number_to_human(1234)
"1.23 Thousand"

Number.Delimit.number_to_delimited(12345678)
"12,345,678"
```

## Installation

Get it from Hex:

```elixir
defp deps do
  [{:number, "~> 0.4.1"}]
end
```

Then run `mix deps.get` to install.

## Usage

If you want to import all of the functions provided by `Number`, simply `use`
it in your module:

```elixir
defmodule MyModule do
  use Number
end
```

More likely, you'll want to import the functions you want from one of
`Number`'s submodules.

```elixir
defmodule MyModule do
  import Number.Currency
end
```

See the [Hex documentation](http://hexdocs.pm/number/) for more information 
about the modules provided by `Number`.

## Signature

`Number` is signed with [Keybase](https://keybase.io) to ensure authenticity.
If you have keybase installed, you can validate the signature from the root
directory using:

```
keybase dir verify
```

If you have installed `Number` as a hex package, simply `cd` to `deps/number`
and run the above command in that directory.

Since I don't sign every commit, only tagged versions will have a valid
signature. The `HEAD` of the project will likely always have an invalid
signature.

## License
MIT. See [LICENSE](/LICENSE) for more details.
