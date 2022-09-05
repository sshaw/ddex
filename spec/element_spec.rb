require "spec_helper"

describe DDEX::Element do
  class Child < DDEX::Element
    xml_accessor :name
    xml_accessor :numbers,  :as => []
  end

  class Parent < DDEX::Element
    xml_accessor :name
    xml_accessor :numbers,  :as => []
    xml_accessor :child,    :as => Child
    xml_accessor :children, :as => [Child]
  end

  let(:parent_attr) { Hash[:name => "sshaw", :numbers => [1,2,3]] }
  let(:child_attr)  { Hash[:name => "fofinha", :numbers => [4,5,6]] }

  describe "#eql?" do
    it "returns true if the elements contain the same attribute values" do
      a = Parent.new(parent_attr)
      b = Parent.new(Hash[ parent_attr.map { |k,v| [k,v.dup] } ])
      expect(a).to eq b
    end

    it "accounts for the equality of contained object's values when doing the comparison" do
      a = Parent.new(parent_attr.merge(:child => Child.new(:numbers => [1])))
      b = Parent.new(parent_attr.merge(:child => Child.new(:numbers => [3])))
      expect(a).not_to eq b

      b = Parent.new(parent_attr.merge(:child => Child.new(:numbers => [1])))
      expect(a).to eq b
    end

    it "returns false if the elements do not contain the same attribute values" do
      a = Parent.new(parent_attr)
      b = Parent.new(parent_attr.merge(:name => "gatinha"))
      expect(a).not_to eq b
    end

    it "returns false if the objects being compared are different types" do
      a = Parent.new(parent_attr)
      b = {}
      expect(a).not_to eq b
    end
  end

  describe "#initialize" do
    it "sets the instance's attributes" do
      nested = parent_attr
      nested[:child] = Child.new(child_attr)
      nested[:children] = [ Child.new(child_attr) ]

      parent = Parent.new(nested)

      expect(parent.name).to eq nested[:name]
      expect(parent.numbers).to eq nested[:numbers]
      expect(parent.child).to eq nested[:child]
      expect(parent.children).to eq nested[:children]
    end

    it "instantiates the object tree from a nested attribute hash" do
      attributes = parent_attr.merge(:child => child_attr, :children => [ child_attr ])
      parent = Parent.new(attributes)

      expect(parent.name).to eq "sshaw"
      expect(parent.numbers).to eq [1,2,3]

      expect(parent.child).to_not be_nil
      expect(parent.child.name).to eq "fofinha"
      expect(parent.child.numbers).to eq [4,5,6]

      expect(parent.children.size).to eq 1
      expect(parent.children[0].name).to eq "fofinha"
      expect(parent.children[0].numbers).to eq [4,5,6]
    end
  end

  describe "#to_hash" do
    it "creates a hash containing the object's attributes" do
      parent = Parent.new(parent_attr)
      expect(parent.to_hash).to eq parent_attr
    end

    it "includes the attributes of contained objects" do
      child1 = Child.new(child_attr.merge(:name => "gatinha"))
      child2 = Child.new(child_attr)

      nested = parent_attr
      nested[:child] = child1.to_hash
      nested[:children] = [ child2.to_hash ]

      parent = Parent.new(parent_attr.merge(:child => child1, :children => [ child2 ]))
      expect(parent.to_hash).to eq nested
    end
  end
end
