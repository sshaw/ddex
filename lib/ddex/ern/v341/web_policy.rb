require "roxml"
require "ddex/element"

require "ddex/ern/v341/condition"

module DDEX module ERN module V341

class WebPolicy < Element
  include ROXML

      
    #xml_namespaces  => "http://ddex.net/xml/ern/341"
  
  xml_name "WebPolicy"

      xml_accessor :access_limitation, :from => "AccessLimitation", :required => false

      xml_accessor :embedding_allowed, :from => "EmbeddingAllowed", :required => false

      xml_accessor :user_rating_allowed, :from => "UserRatingAllowed", :required => false

      xml_accessor :user_comment_allowed, :from => "UserCommentAllowed", :required => false

      xml_accessor :user_responses_allowed, :from => "UserResponsesAllowed", :required => false

      xml_accessor :syndication_allowed, :from => "SyndicationAllowed", :required => false

      xml_accessor :access_blocking_requested, :from => "AccessBlockingRequested", :required => false

      xml_accessor :condition, :as => DDEX::ERN::V341::Condition, :from => "Condition", :required => false



  
end

end end end
