require "spec_helper"

# describe DDEX::Element do
#   class Child < Element
#     xml_accessor :name
#   end

#   class MyElement < Element
#     xml_accessor :name
#     xml_accessor :children, :as => [Child]
#   end

#   it "initializes an based on a Hash of attributes from" do
#     e = MyElement.new :name => "sshaw"
#     e.name.should eq "sshaw"
#   end

#   it "initializes a child" do
#     e = MyElement.new :children => [ :name => "sshaw" ]
#     e.children.size.should have(1).item
#     e.children.first.name.should eq "sshaw"
#   end
# end
