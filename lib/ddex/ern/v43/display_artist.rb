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
require "ddex/ern/v43/display_artist_role"
require "ddex/ern/v43/title_display_information"

module DDEX module ERN module V43  # :nodoc: all

class DDEX::ERN::V43::DisplayArtist < Element
  include ROXML


  xml_name "DisplayArtist"

      xml_accessor :artist_party_reference, :from => "ArtistPartyReference", :required => true
      xml_accessor :display_artist_role, :as => DDEX::ERN::V43::DisplayArtistRole, :from => "DisplayArtistRole", :required => true
      xml_accessor :artistic_roles, :as => [DDEX::ERN::V43::ContributorRole], :from => "ArtisticRole", :required => false
      xml_accessor :title_display_informations, :as => [DDEX::ERN::V43::TitleDisplayInformation], :from => "TitleDisplayInformation", :required => false


  

      xml_accessor :sequence_number, :as => Integer, :from => "@SequenceNumber", :required => false
    
  

end

end end end
