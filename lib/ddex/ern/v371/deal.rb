#
# Auto-generated by jaxb2ruby v0.0.1 on 2018-03-01 07:52:38 +0000
# https://github.com/sshaw/jaxb2ruby
#
#
# DO NOT MODIFY
# Automatically generated by jaxb2ruby v0.0.1 (https://github.com/sshaw/jaxb2ruby)
#

require "roxml"
require "ddex/element"

require "ddex/ern/v371/deal_reference"
require "ddex/ern/v371/deal_technical_resource_details_reference_list"
require "ddex/ern/v371/deal_terms"
require "ddex/ern/v371/resource_usage"
require "ddex/ern/v371/web_page"

module DDEX module ERN module V371  # :nodoc: all

class Deal < Element
  include ROXML


  xml_name "Deal"

      xml_accessor :deal_references, :as => [DealReference], :from => "DealReference", :required => false
      xml_accessor :deal_terms, :as => DealTerms, :from => "DealTerms", :required => false
      xml_accessor :resource_usage, :as => ResourceUsage, :from => "ResourceUsage", :required => false
      xml_accessor :deal_technical_resource_details_reference_list, :as => DealTechnicalResourceDetailsReferenceList, :from => "DealTechnicalResourceDetailsReferenceList", :required => false
      xml_accessor :distribution_channel_pages, :as => [WebPage], :from => "DistributionChannelPage", :required => false


  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  

end

end end end
