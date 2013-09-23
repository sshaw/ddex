Fabricator :title, :class_name => DDEX::V20120404::DDEXC::Title do
  language_and_script_code %w[en-US es-MX].sample
  title_type "OriginalTitle"
  title_text
  sub_title [DDEX::V20120404::DDEXC::TypedSubTitle.new(:sub_title_type => "X",
                                     :value => "Blah",
                                     :language_and_script_code => "en-US")]
end
