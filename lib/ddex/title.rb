module DDEX
  class Title < Element
    xml_accessor :language, :from => "@LanguageAndScriptCode"
    xml_accessor :title, :from => "TitleText"
    xml_accessor :subtitle, :from => "SubTitle", :as => []
    xml_accessor :title_type, :from => :attr
  end
end
