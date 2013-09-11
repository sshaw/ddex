module DDEX
  module ERN
    class VideoDetailsByTerritory < DDEX::SoundRecordingDetailsByTerritory
      xml_accessor :courtesy_line, :as => CourtesyLine
      xml_accessor :sequence_number
      xml_accessor :host_sound_carriers, :as => [HostSoundCarrier]

      xml_accessor :plines, :from => "PLine", :as => [PLine]
      xml_accessor :marketing_comment, :as => Comment
      xml_accessor :genres, :as => [Genre]
      xml_accessor :parental_warning_types, :as => [ParentalWarningType]
      xml_accessor :av_ratings, :as => [AvRating]
      xml_accessor :fulfillment_date, :as => FulfillmentDate
      xml_accessor :keywords, :as => [Keywords]
      xml_accessor :synopsis, :as => Synopsis
      xml_accessor :clines, :from => "CLine", :as => [CLine]
      
      xml_accessor :technical_video_details, :as => [TechnicalVideoDetails]
      xml_accessor :characters, :as => [Character]
    end
  end
end
