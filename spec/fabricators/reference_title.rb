Fabricator :reference_title, :class_name => DDEX::V20120404::DDEXC::ReferenceTitle do
  language_and_script_code "en-US"
  title_text
  sub_title  DDEX::V20120404::DDEXC::SubTitle.new(:value => "Blah",
                                :language_and_script_code => "en-US")
end
