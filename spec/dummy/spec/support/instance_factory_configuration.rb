RSpec.configure do |config|
  config.include InstanceFactory

  config.after(:each) do
    instance_factory_clear!
  end
end

FactoryGirl::SyntaxRunner.send(:include, InstanceFactory)
