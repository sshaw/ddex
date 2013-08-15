Fabricator :description, :class_name => DDEX::Description do
  language_and_script_code "en-US"
  value "what it izzz what it do what it don't do"
end

Fabricator :part_type, :from => :description, :class_name => DDEX::PartType

