RSpec::Matchers.define :have_attributes do |expected|
  failure_message_for_should { |actual| "expected attribute :#{@failure[:method]} to return #{@failure[:expected]} but got #{@failure[:actual]}" }

  match_for_should do |actual|
    @failure = {}
    match = true
    expected.each do |method, want|
      method = "#{method}?" if want.is_a?(FalseClass) or want.is_a?(TrueClass)
      got = actual.send(method)
      if got != want
        @failure.update(:method => method, :expected => want, :actual => got)
        match = false
        break
      end
    end
    match
  end
end

shared_examples_for "a DDEX element" do
  it { should be_a_kind_of DDEX::Element }

  it "creates an instance from XML" do
    described_class.from_xml(xmldoc).should have_attributes(attributes)
  end

  it "creates an instance from a Hash" do
    described_class.new(attributes).should have_attributes(attributes)
  end

  describe "#to_hash" do
    it "turns the instance into a Hash" do
      described_class.new(attributes).to_hash.should eq to_hash(attributes)
    end
  end

  describe "#to_xml" do
    it "turns the instance into XML" do
      described_class.new(attributes).to_xml.should equal_xml(xmldoc)
    end
  end

  # Turn any DDEX::Element values into a Hash
  def to_hash(attributes)
    hash = {}
    attributes.each do |k,v|
      hash[k.to_sym] = case
        when v.respond_to?(:to_hash)
          v.to_hash
        when Array === v
          v.map { |e| e.respond_to?(:to_hash) ? e.to_hash : e }
        else
          v
      end
    end
    hash
  end
end
