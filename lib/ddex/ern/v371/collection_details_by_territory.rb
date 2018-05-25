#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:37 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v371/character"
require "ddex/ern/v371/current_territory_code"
require "ddex/ern/v371/detailed_resource_contributor"
require "ddex/ern/v371/title"

module DDEX module ERN module V371  # :nodoc: all

class CollectionDetailsByTerritory < Element
  include ROXML


  xml_name "ns1:CollectionDetailsByTerritory"

      xml_accessor :excluded_territory_codes, :as => [CurrentTerritoryCode], :from => "ExcludedTerritoryCode", :required => false
      xml_accessor :territory_codes, :as => [CurrentTerritoryCode], :from => "TerritoryCode", :required => false
      xml_accessor :titles, :as => [Title], :from => "Title", :required => false
      xml_accessor :contributors, :as => [DetailedResourceContributor], :from => "Contributor", :required => false
      xml_accessor :complete?, :from => "IsComplete", :required => false
      xml_accessor :characters, :as => [Character], :from => "Character", :required => false


  

end

end end end