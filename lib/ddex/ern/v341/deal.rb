require "roxml"
require "ddex/element"

require "ddex/ern/v341/deal_technical_resource_details_reference_list"
require "ddex/ern/v341/deal_terms"
require "ddex/ern/v341/resource_usage"
require "ddex/v20120404/ddexc/deal_reference"
require "ddex/v20120404/ddexc/web_page"

module DDEX module ERN module V341

class Deal < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "Deal"

      
      xml_accessor :deal_references, :as => [], :from => "DealReference", :required => false

      xml_accessor :deal_terms, :from => "DealTerms", :required => false

      xml_accessor :resource_usage, :from => "ResourceUsage", :required => false

      xml_accessor :deal_technical_resource_details_reference_list, :from => "DealTechnicalResourceDetailsReferenceList", :required => false

      
      xml_accessor :distribution_channel_pages, :as => [], :from => "DistributionChannelPage", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode" 
    
  
end

end end end
