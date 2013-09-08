Fabricator :reference_title, :class_name => DDEX::ReferenceTitle do
  language_and_script_code "en-US"
  title_text
  sub_title  DDEX::SubTitle.new(:value => "Blah",
                                :language_and_script_code => "en-US")
end
