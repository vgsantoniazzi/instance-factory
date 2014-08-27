To include helper on FactoryGirl

```ruby
FactoryGirl::SyntaxRunner.send(:include, InstanceFactory)
```

To include on RSpec

```ruby
RSpec.configure do |config|
  config.include InstanceFactory

  config.after(:each) do
    instance_factory_clear!
  end
end
```

To include on default test of rails 4

```ruby
class ActiveSupport::TestCase
  include InstanceFactory
end

after :each do
  instance_factory_clear!
end
```

So, you can call instance_factory on FactoryGirl, RSpec, Minitest, or another.


[![Build Status](https://travis-ci.org/vgsantoniazzi/instance-factory.svg?branch=master)](https://travis-ci.org/vgsantoniazzi/instance-factory)
