
module DDEX
  class ResourceMusicalWorkReference < Element
    xml_accessor :sequence_number, :as => Integer
    xml_accessor :duration_used
    xml_accessor :fragment?, :from => "IsFragment", :as => :bool
    xml_accessor :resource_musical_work_reference
  end
end
