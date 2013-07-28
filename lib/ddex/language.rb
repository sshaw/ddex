module DDEX
  module Language
    def self.included(klass)
      klass.instance_eval do
        xml_accessor :language_and_script_code, :from => "@LanguageAndScriptCode"
        alias_method :language, :language_and_script_code
      end
    end
  end
end
