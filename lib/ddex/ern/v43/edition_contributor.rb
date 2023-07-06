#
# Auto-generated by jaxb2ruby https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v43/contributor_role"
require "ddex/ern/v43/display_credits"
require "ddex/ern/v43/is_credited"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::EditionContributor < Element
  include ROXML


  xml_name "EditionContributor"

      xml_accessor :contributor_party_reference, :from => "ContributorPartyReference", :required => true
      xml_accessor :roles, :as => [DDEX::ERN::V43::ContributorRole], :from => "Role", :required => false
      xml_accessor :has_made_featured_contribution?, :from => "HasMadeFeaturedContribution", :required => false
      xml_accessor :has_made_contracted_contribution?, :from => "HasMadeContractedContribution", :required => false
      xml_accessor :is_credited, :as => DDEX::ERN::V43::IsCredited, :from => "IsCredited", :required => false
      xml_accessor :display_credits, :as => [DDEX::ERN::V43::DisplayCredits], :from => "DisplayCredits", :required => false


  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  

end

end end end
