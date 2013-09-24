require "roxml"
require "ddex/content_element"


module DDEX module ERN module V36

class SubTitle < ContentElement
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "SubTitle"


    xml_accessor :content, :from => ".", :required => false
    alias_method :value, :content

  
      xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode", :required => false
    
  
end

end end end
