module DDEX
  class PartyId < Element
    xml_accessor :namespace, :from => :attr
    xml_accessor :dpid?, :from => "@IsDPID"
    xml_accessor :isni?, :from => "@IsISNI"
    xml_accessor :value, :from => "."

    def inspect
      "ns #{namespace}, dpid #{dpid?}, isni #{isni?} value #{value}"
    end    
  end
end
