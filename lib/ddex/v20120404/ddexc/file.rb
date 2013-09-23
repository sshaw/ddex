require "roxml"
require "ddex/element"

require "ddex/v20120404/ddexc/hash_sum"

module DDEX module V20120404 module DDEXC

class File < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/20120404/ddexC"
  
  xml_name "File"

      xml_accessor :url, :from => "URL", :required => false

      xml_accessor :file_name, :from => "FileName", :required => false

      xml_accessor :file_path, :from => "FilePath", :required => false

      xml_accessor :hash_sum, :from => "HashSum", :required => false



  
end

end end end
