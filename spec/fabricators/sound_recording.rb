Fabricator :instrumentation_description, :from => :description, :class_name => DDEX::InstrumentationDescription

Fabricator :sound_recording, :class_name => DDEX::SoundRecording do
  language_and_script_code "en-US"
  artist_related false
  sound_recording_type
  sound_recording_ids(:count => 1) { Fabricate(:sound_recording_id) }
  instrumentation_description
  medley true
  potpourri true
  instrumental false
  background true
  bonus_resource false
  computer_generated true
  performer_information_required true
  language_of_performance "es-MX"
  duration "PT0H45M0S"
  rights_agreement_id
  resource_musical_work_reference_list(:count => 1) { Fabricate(:resource_musical_work_reference) }
  resource_contained_resource_reference_list(:count => 1) { Fabricate(:resource_contained_resource_reference) }
  creation_date
  mastered_date
  sound_recording_details_by_territory(:count => 1) { Fabricate(:sound_recording_details_by_territory) }
end

Fabricator :ern_sound_recording, :from => :sound_recording, :class_name => DDEX::ERN::SoundRecording do
  updated false
  no_silence_after true
  no_silence_before false
end
