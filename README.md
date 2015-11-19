## Welcome to Instance Factory

Use current object for associations, preventing FactoryGirl creates a new one record in database.
Works with FactoryGirl, RSpec and Minitest.

## Getting Started

From rubygems:

Manually
```
gem install instance-factory
```
Gemfile
```
gem "instance-factory"
```


From source code:

```
git clone git@github.com:vgsantoniazzi/instance-factory.git
cd instance-factory
gem build --verbose instance-factory.gemspec
gem install instance-factory-version.gem
```

## Usage

To include helper on FactoryGirl

```ruby
FactoryGirl::SyntaxRunner.send(:include, InstanceFactory)
```

Adjust your spec_helper

```ruby
RSpec.configure do |config|
  config.include InstanceFactory

  config.after(:each) do
    instance_factory_clear!
  end
end
```

Or to include on default test of rails 4

```ruby
class ActiveSupport::TestCase
  include InstanceFactory
end

after :each do
  instance_factory_clear!
end
```

## Contributing

I :heart: Open source!

[Follow github guides for forking a project](https://guides.github.com/activities/forking/)

[Follow github guides for contributing open source](https://guides.github.com/activities/contributing-to-open-source/#contributing)

## Code status

[![Build Status](https://travis-ci.org/vgsantoniazzi/instance-factory.svg?branch=master)](https://travis-ci.org/vgsantoniazzi/instance-factory)

## License

Gem is released under the [MIT license](http://opensource.org/licenses/MIT).

================================================================================




So, you can call instance_factory on , or another.


