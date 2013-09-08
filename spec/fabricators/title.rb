Fabricator :title, :class_name => DDEX::Title do
  language_and_script_code %w[en-US es-MX].sample
  title_type "OriginalTitle"
  title_text
  sub_title [DDEX::TypedSubTitle.new(:sub_title_type => "X",
                                     :value => "Blah",
                                     :language_and_script_code => "en-US")]
end
