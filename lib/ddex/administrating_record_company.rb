require "ddex/party"
require "ddex/user_defined_value"

module DDEX
  class AdministratingRecordCompany < Element
    include UserDefinedValue
    extend Party

    # namspace
    # user_defined_value

    xml_accessor :role, :from => "@AdministratingRecordCompanyRole"
    
    party_names
    party_id    
  end
end
