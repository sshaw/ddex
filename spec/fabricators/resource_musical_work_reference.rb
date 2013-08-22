Fabricator :resource_musical_work_reference, :class_name => DDEX::ResourceMusicalWorkReference do
  sequence_number { sequence }
  duration_used "PT1H2M3S"
  fragment false
  # IDREF for LocalMusicalWorkAnchorReference
  resource_musical_work_reference { sequence(:resource_musical_work_reference) { |i| "W#{i}" } }
end
