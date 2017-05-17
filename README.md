# ProcedureableMethod

Add `Method#===`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'procedureable_method'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install procedureable_method

## Usage

```ruby
require "procedureable_method"
using ProcedureableMethod
# or only
# require "procedureable_method/core_ext"

def func value
	case value
	when 1.method(:<)
		"plus"
	when -1.method(:>)
		"minus"
	when 0.method(:==)
		"zero"
	end
end

func 3   # => "plus"
func -6  # => "minus"
func 0   # => "zero"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/osyo-manga/gem-procedureable_method.

