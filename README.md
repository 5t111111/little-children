# Little Children

Little Children is a simple OSC server for testing receiving OSC message. You can configure a port number and add some address (methods).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'little-children'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install little-children

## Usage

```ruby
require "little-children"

osc_server = LittleChildren::OSCServer.new(12345)
osc_server.add_method("/greeting")
osc_server.start
```

Little Children also provides CLI

```text
$ /little-children-run-server 12345 /greeting /hello /hey
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/5t111111/little-children.

## License

MIT
