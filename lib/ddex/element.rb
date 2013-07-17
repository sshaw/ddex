module DDEX
  class Element
    include ROXML

    xml_convention :camelcase

    def initialize(attributes = {})
      attributes.each do |name, value|
        name   = name.to_s
        method = "#{name}="
        next unless attr = roxml_attributes[name] and respond_to?(method)

        if !attr.sought_type.instance_of?(Symbol)
          value = attr.array? ?
            # v should be a Hash
            Array(value).map { |v| attr.sought_type.new(v) } :
            attr.sought_type.new(name => value)
        end

        send(method, value)
      end
    end

    def to_xml(options = {})
      # Defaults to Nokorigi or LibMXL elements
      super.to_s
    end

    def to_hash
      hash = {}
      roxml_attributes.keys.each do |attr|
        value = send(attr)
        value = if value.is_a?(Array)
          value.map { |v| v.respond_to?(:to_hash) ? v.to_hash : v }
        else
          value.respond_to?(:to_hash) ? value.to_hash : value
        end

        hash[attr.to_sym] = value unless value.nil?
      end

      hash
    end

    private
    def roxml_attributes
      @roxml_attributes ||= begin
        attr = {}
        self.class.roxml_attrs.each { |v| attr[v.accessor] = v }
        attr
      end
    end
  end
end
