Fabricator :av_rating, :class_name => DDEX::AvRating do
  rating_text "R"
  rating_agency DDEX::RatingAgency.new(:namespace => "x",
                                       :user_defined_value => "2.0",
                                       :value => "MPAA")
end
