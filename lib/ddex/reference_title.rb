module DDEX
  class ReferenceTitle < Element
    xml_accessor :language, :from => "@LanguageAndScriptCode"
    xml_accessor :title, :from => "TitleText"
    xml_accessor :sub_title, :from => "SubTitle"
  end
end
