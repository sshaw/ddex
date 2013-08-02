module DDEX
  class Element
    include ROXML

    xml_convention :camelcase

    def initialize(attributes = {})
      raise ArgumentError, "attributes must be a Hash" unless Hash === attributes

      attributes.each do |name, value|
        name   = name.to_s
        method = "#{name}="
        next unless attr = roxml_attributes[name] and respond_to?(method)

        value = Array(value) if !attr.sought_type.instance_of?(Symbol) && attr.array? # If it's not a ROXML directive && ...          
        send(method, value)
      end
    end

    def to_xml(options = {})
      # Defaults to Nokorigi or LibMXL elements
      super.to_s
    end

    def to_hash
      hash = {}
      roxml_attributes.values.each do |attr|
        value = send(attr.accessor)
        value = if value.is_a?(Array)
          value.map { |v| v.respond_to?(:to_hash) ? v.to_hash : v }
        else
          value.respond_to?(:to_hash) ? value.to_hash : value
        end

        hash[attr.attr_name.to_sym] = value unless value.nil?
      end

      hash
    end

    # TODO: hash
    def eql?(other)
      instance_of?(other.class) && roxml_attributes.values.all? { |attr| other.respond_to?(attr.accessor) && other.send(attr.accessor) == send(attr.accessor) }
    end

    def ==(other)
      eql?(other)
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
