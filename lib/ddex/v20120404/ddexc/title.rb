require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/title_text"
require "ddex/v20120404/ddexc/typed_sub_title"

module DDEX module V20120404 module DDEXC

class Title < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "Title"

      xml_accessor :title_text, :as => DDEX::V20120404::DDEXC::TitleText, :from => "TitleText", :required => true

      
      xml_accessor :sub_titles, :as => [DDEX::V20120404::DDEXC::TypedSubTitle], :from => "SubTitle", :required => false



  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
      xml_accessor :title_type, :from => "@TitleType", :required => false
    
  
end

end end end
