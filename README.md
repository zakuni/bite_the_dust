# BiteTheDust

[![Build Status](https://travis-ci.org/zakuni/bite_the_dust.png?branch=master)](https://travis-ci.org/zakuni/bite_the_dust)

## Installation

Add this line to your application's Gemfile:

    gem 'bite_the_dust'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bite_the_dust

## Usage

```ruby
require 'bite_the_dust'

# output "done" after 5 seconds.
BTD.countdown(5){|n| puts "done"}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
