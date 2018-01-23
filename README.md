[![Gem Version](https://badge.fury.io/rb/active_record_rack.svg)](https://badge.fury.io/rb/active_record_rack)
[![Build Status](https://travis-ci.org/u2i/active_record_rack.svg?branch=master)](https://travis-ci.org/u2i/active_record_rack)

# ActiveRecordRack

Rack middleware managing ActiveRecord connections in standalone (non-Rails) applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_record_rack'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord_rack

## Usage

`ActiveRecordRack::RackMiddleware` class implements Rack interface. Add it to your web application as regular Rack middleware.

### Sinatra example

```ruby
require 'active_record_rack'

class AwesomeApp < Sinatra::Base
  use ActiveRecordRack::RackMiddleware
  
  get '/?' do
    # You can use ActiveRecord here and the connections will be automatically returned to the pool
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/u2i/active_record_rack.

