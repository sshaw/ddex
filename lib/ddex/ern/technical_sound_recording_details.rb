module DDEX
  module ERN    
    class TechnicalSoundRecordingDetails < Element
      xml_accessor :bit_rate, :from => "BitRate", :as => BitRate
      xml_accessor :file, :from => "File", :as => File
      xml_accessor :is_preview, :from => "IsPreview" # do |v|
      xml_accessor :number_of_channels, :as => Fixnum, :from => "NumberOfChannels" 
      xml_accessor :reference, :from => "TechnicalSoundRecordingDetails"

      # xml_accessor :rights_agreement_id, :from => "RightsAgreementId", :as => RightsAgreementId
    end
  end
end
