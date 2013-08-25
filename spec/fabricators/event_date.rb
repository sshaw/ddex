Fabricator :event_date, :from => DDEX::EventDate do
  language_and_script_code "en-US"
  location_description "Great!"
  territory "US"
  before true
  after true
  approximate true
  value { Date.today }
end

Fabricator :mastered_date, :from => :event_date, :class_name => DDEX::MasteredDate
Fabricator :creation_date, :from => :event_date, :class_name => DDEX::CreationDate
Fabricator :original_resource_release_date, :from => :event_date, :class_name => DDEX::OriginalResourceReleaseDate
