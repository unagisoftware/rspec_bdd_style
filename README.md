# RspecBddStyle

RspecBddStyle is a Ruby gem that provides a set of utilities to enhance readability in RSpec BDD-style specifications.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'rspec-bdd-style'
end
```

And then execute:

```ruby
bundle install
```

## Usage

To use RspecBddStyle in your RSpec tests, simply require the module. For example, in your spec/rails_helper.rb or spec/spec_helper.rb:

```ruby
require 'rspec_bdd_style'
```

Now you can use the BDD-style methods in your tests:

```ruby
it '...' do
  given_i_am_fabian_show
  when_i_invite_rosalia_to_dance
  then_she_revolea_upside_down
end

it '...' do
  given_i_am_fabian_show
  when_i_am_dancing
  and_i_invite_rosalia_to_dance
  then_she_revolea_upside_down
end

private 

def i_am_fabian_show
  ...
end

def i_invite_rosalia_to_dance
  ...
end

def i_am_dancing
  ...
end

def she_revolea_upside_down
  ...
end
```
