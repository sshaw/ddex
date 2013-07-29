Fabricator :resource_contributor, :class_name => DDEX::ResourceContributor do
  resource_contributor_role
end

Fabricator :resource_contributor_role, :class_name => DDEX::ResourceContributorRole do
  namespace "abc"
  user_defined_value "sshaw"
  value "Actor"
end
