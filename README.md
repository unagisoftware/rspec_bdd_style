# RspecBddStyle

RspecBddStyle is a Ruby gem that provides a set of utilities to enhance readability in RSpec BDD-style specifications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_bdd_style'
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
it 'should do something' do
  given_i_visit_a_page
  when_i_click_the_button
  and_i_do_something
  then_i_expect_a_result
end

private 

def visit_a_page
  ...
end

def click_the_button
  ...
end

def do_something
  ...
end

def expect_a_result
  ...
end
```
