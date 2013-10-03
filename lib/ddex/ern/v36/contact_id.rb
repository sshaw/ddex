require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class ContactId < Element
  include ROXML

      
    
  
  xml_name "ContactId"

      
      xml_accessor :email_addresses, :as => [], :from => "EmailAddress", :required => false

      
      xml_accessor :phone_numbers, :as => [], :from => "PhoneNumber", :required => false

      
      xml_accessor :fax_numbers, :as => [], :from => "FaxNumber", :required => false



  
end

end end end
