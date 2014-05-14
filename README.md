FactoryGirl::SyntaxRunner.send(:include, FactoryHelpers)

  RSpec.configure do |config|

  config.include FactoryHelpers

  config.after(:each) do
    FactoryVariables.clear
  end
end
