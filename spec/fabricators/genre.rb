Fabricator :genre, :class_name => DDEX::V20120404::DDEXC::Genre do
  language_and_script_code "en-US"
  genre_text { Fabricator(:description) }
  sub_genre  { Fabricator(:description) }
end


