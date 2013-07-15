module DDEX
  class PartyName < Element     
    xml_accessor :full_name, :from => "FullName"
    xml_accessor :abbrivated_name, :from => "AbbrivatedName"
  end
end
