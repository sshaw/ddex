require "roxml"
require "ddex/element"

require "ddex/ern/v36/hash_sum"

module DDEX module ERN module V36

class File < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/36"
  
  xml_name "File"

      xml_accessor :url, :from => "URL", :required => false

      xml_accessor :file_name, :from => "FileName", :required => false

      xml_accessor :file_path, :from => "FilePath", :required => false

      xml_accessor :hash_sum, :as => DDEX::ERN::V36::HashSum, :from => "HashSum", :required => false



  
end

end end end
