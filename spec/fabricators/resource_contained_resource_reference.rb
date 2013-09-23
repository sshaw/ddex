Fabricator :resource_contained_resource_reference, :class_name => DDEX::V20120404::DDEXC::ResourceContainedResourceReference do
  # IDREF so it must match a LocalResourceAnchorReference
  resource_contained_resource_reference { sequence(:ref) { |i| "A#{i}" } }
  duration_used "PT1H2M3S"
  start_point "PT0H0M10S"
  purpose "Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
end
