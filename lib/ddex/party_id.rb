module DDEX
  class PartyId < Element
    xml_accessor :namespace, :from => :attr
    xml_accessor :dpid?, :from => "@IsDPID"
    xml_accessor :ini?, :from => "@IsINI"
    xml_accessor :value, :from => "."
  end
end
