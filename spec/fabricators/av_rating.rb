Fabricator :av_rating, :class_name => DDEX::V20120404::DDEXC::AvRating do
  rating_text "R"
  rating_agency DDEX::V20120404::DDEXC::RatingAgency.new(:namespace => "x",
                                       :user_defined_value => "2.0",
                                       :value => "MPAA")
end
