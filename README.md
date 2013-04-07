# 1\_as\_identity\_function

`1.to_proc` returns `lambda {|x| x}`

## Installation

Add this line to your application's Gemfile:

    gem '1_as_identity_function'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install 1_as_identity_function

## Usage

```ruby
[1, 2, 3].map(&1)
=> [1, 2, 3]
```

Yeah.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
