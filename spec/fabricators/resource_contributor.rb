Fabricator :resource_contributor, :class_name => DDEX::V20120404::DDEXC::ResourceContributor do
  sequence_number { Fabricate.sequence }
  party_id
  party_names(:count => 1) { Fabricate(:party_name) }
  resource_contributor_roles(:count => 1) { Fabricate(:resource_contributor_role) }
end

Fabricator :indirect_resource_contributor, :class_name => DDEX::V20120404::DDEXC::IndirectResourceContributor do
  sequence_number { Fabricate.sequence }
  party_id
  party_names(:count => 1) { Fabricate(:party_name) }
  indirect_resource_contributor_roles(:count => 1) { Fabricate(:musical_work_contributor_role) }
end

Fabricator :resource_contributor_role, :class_name => DDEX::V20120404::DDEXC::ResourceContributorRole do
  namespace "abc"
  user_defined_value "sshaw"
  value "Actor"
end
