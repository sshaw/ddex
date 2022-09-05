module DDEX
  class Element
    include ROXML

    # Set parser for ROXML
    XML_PARSER = "nokogiri".freeze

    xml_convention :camelcase

    # ROXML doesn't have complete namespace support.
    # We use this to set a namespace on calls to to_xml().
    class << self
      def ns
        @namespace
      end

      private
      def setns(prefix, name)
        @namespace = [prefix, name].compact
      end
    end

    ##
    # Create an new instance
    #
    # === Arguments
    #
    # [attributes (Hash)] Values to set on the instance's attributes, a nested +Hash+ will result in instantiation of child objects.
    #
    # === Errors
    #
    # [ArgumentError] If +attributes+ is not a +Hash+ or is not +nil+

    def initialize(attributes = nil)
      attributes ||= {}
      raise ArgumentError, "attributes must be a Hash" unless Hash === attributes

      attributes.each do |name, value|
        name   = name.to_s
        method = "#{name}="
        next unless attr = roxml_attributes[name] and respond_to?(method)

        if !attr.sought_type.instance_of?(Symbol) && attr.array? # If it's not a ROXML directive && ...
          value = Array(value)
        end

        if !value.is_a?(DDEX::Element) && attr.sought_type.is_a?(Class) && attr.sought_type.ancestors.include?(DDEX::Element)
          value = if attr.array? && value.is_a?(Array)
            value.map { |v| v.is_a?(DDEX::Element) ? v : attr.sought_type.new(v) }
          elsif !value.is_a?(Hash)
            attr.sought_type.new(name => value)
          else
            attr.sought_type.new(value)
          end
        end

        public_send(method, value)
      end
    end

    ##
    # Creates an XML representation of this instance and its descendants. Use DDEX.write instead, it's more flexable.
    #

    def to_xml(options = {})
      doc = super
      ns  = self.class.ns

      if ns and ns.size == 2 # prefix and name
        doc.add_namespace_definition(*ns)
        doc.name = "#{ns.first}:#{doc.name}"
      end

      doc
    end

    ##
    # Create a +Hash+ representation of this instance and its descendants
    #

    def to_hash
      hash = {}
      roxml_attributes.values.each do |attr|
        value = send(attr.accessor)
        value = if value.is_a?(Array)
          value.map { |v| v.respond_to?(:to_hash) ? v.to_hash : v }
        else
          value.respond_to?(:to_hash) ? value.to_hash : value
        end

        hash[attr.attr_name.to_sym] = value if value.present?
      end

      hash
    end

    def eql?(other)
      instance_of?(other.class) && roxml_attributes.values.all? { |attr| other.respond_to?(attr.accessor) && other.send(attr.accessor) == send(attr.accessor) }
    end

    def ==(other)
      eql?(other)
    end

    def hash
      to_hash.hash
    end

    private
    def roxml_attributes
      @roxml_attributes ||= begin
        attr = {}
        self.class.roxml_attrs.each { |v| attr[v.attr_name] = v }
        attr
      end
    end
  end
end
