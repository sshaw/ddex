require "date"

Fabricator :event_date, :from => DDEX::EventDate do
  language "en-US"
  location_description "Great!"
  territory "US"
  before true
  after true
  approximate true
  value { DateTime.now }
end
