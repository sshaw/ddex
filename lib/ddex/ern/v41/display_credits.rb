require "roxml"
require "ddex/element"

require "ddex/ern/v41/display_credit_party"
require "ddex/ern/v41/name_used_in_display_credit"

module DDEX module ERN module V41  # :nodoc: all

class DDEX::ERN::V41::DisplayCredits < Element
  include ROXML


  xml_name "DisplayCredits"

      xml_accessor :display_credit_text, :from => "DisplayCreditText", :required => true

      xml_accessor :display_credit_party, :as => DDEX::ERN::V41::DisplayCreditParty, :from => "DisplayCreditParty", :required => false
      xml_accessor :name_used_in_display_credit, :as => DDEX::ERN::V41::NameUsedInDisplayCredit, :from => "NameUsedInDisplayCredit", :required => false


      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false


      xml_accessor :applicable_territory_code, :from => "@ApplicableTerritoryCode", :required => false

      xml_accessor :default?, :from => "@IsDefault", :required => false
end

end end end
