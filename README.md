To include helper on FactoryGirl
    
        FactoryGirl::SyntaxRunner.send(:include, FactoryHelpers)

To include on RSpec and configure for clear all variables after each spec
    
    RSpec.configure do |config|
      config.include FactoryHelpers

      config.after(:each) do
        FactoryVariables.clear
      end
    end

So, you can call instance_factory on FactoryGirl factories, or in RSpec.

[![Build Status](https://travis-ci.org/vgsantoniazzi/instance-factory.svg?branch=master)](https://travis-ci.org/vgsantoniazzi/instance-factory)
