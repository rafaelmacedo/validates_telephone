# ValidatesTelephone [![Build Status](https://secure.travis-ci.org/plribeiro3000/validates_telephone.png?branch=master)](http://travis-ci.org/plribeiro3000/validates_telephone)

Rails gem to validate Telephone.

## Installation

Add this line to your application's Gemfile:

    gem 'validates_telephone'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validates_telephone

## Basic Usage

It will accept a valid telephone from Brazil or United States by default:

```ruby
class User < ActiveRecord::Base
    validates :telephone, :telephone => true
end
```

In case you want it to be a valid telephone for just one place at a time, pass the locale:

```ruby
class User < ActiveRecord::Base
    validates :br_telephone, :telephone => { :locale => :br }
    validates :usa_telephone, :telephone => { :locale => :usa }
end
```

## Test

This gem has builtin matchers for shoulda-matchers and remarkable.

## Notes

Since version 1.0.0, it isn’t necessary to load any file inside your spec_helper anymore.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request