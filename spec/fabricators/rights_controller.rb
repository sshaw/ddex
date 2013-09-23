Fabricator :rights_controller, :class_name => DDEX::V20120404::DDEXC::RightsController do
  party_id
  party_names(:count => 1) { Fabricate(:party_name) }
  rights_controller_roles [ DDEX::V20120404::DDEXC::RightsControllerRole.new(:value => "RightsAdministrator") ]
  right_share_unknown false
  right_share_percentage "0.123"
end
