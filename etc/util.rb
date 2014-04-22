# Helper functions used by ddex.erb
require "templates/util/roxml" # from jaxb2ruby

alias :jaxb2ruby_accessor_name :accessor_name

def accessor_name(node)
  name = jaxb2ruby_accessor_name(node)
  name["is_"] = "" if node.type == :boolean and name.start_with?(":is_")
  name
end
