module InstanceFactory

  def instance_factory(object_name, class_name = nil)
    set_class_name(object_name, class_name)
    return defined_var? ? get_var : set_var
  end

  private

  def defined_var?
    InstanceFactoryVariables.class_variable_defined?(:"@@#{@class_name}")
  end

  def set_var
    InstanceFactoryVariables.class_variable_set(:"@@#{@class_name}", FactoryGirl.create(:"#{@class_name}"))
  end

  def get_var
    InstanceFactoryVariables.class_variable_get(:"@@#{@class_name}")
  end

  def set_class_name(object_name, class_name)
    @class_name = class_name.nil? ? object_name : class_name
  end
end

#
# Intern class for manage class variables
#
class InstanceFactoryVariables
  def self.clear
    class_variables.each{|var| remove_class_variable(var) }
  end
end
