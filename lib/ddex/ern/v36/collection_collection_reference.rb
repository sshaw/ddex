require "roxml"
require "ddex/element"


module DDEX module ERN module V36

class CollectionCollectionReference < Element
  include ROXML

      
    
  
  xml_name "CollectionCollectionReference"

      xml_accessor :sequence_number, :as => Integer, :from => "SequenceNumber", :required => false

      xml_accessor :collection_collection_reference, :from => "CollectionCollectionReference", :required => true

      xml_accessor :start_time, :from => "StartTime", :required => false

      xml_accessor :duration, :from => "Duration", :required => false

      xml_accessor :end_time, :from => "EndTime", :required => false

      xml_accessor :inclusion_date, :as => DateTime, :from => "InclusionDate", :required => false



  
end

end end end
