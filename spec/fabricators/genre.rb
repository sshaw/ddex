Fabricator :genre_text, :from => :description, :class_name => DDEX::GenreText
Fabricator :sub_genre, :from => :description, :class_name => DDEX::SubGenre

Fabricator :genre, :class_name => DDEX::Genre do
  language_and_script_code "en-US"
  genre_text
  sub_genre
end


