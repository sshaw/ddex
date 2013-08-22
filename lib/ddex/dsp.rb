require "ddex/name"
require "ddex/party"

module DDEX
  class DSP < Element
    include Language
    extend Party

    xml_accessor :territories, :as => []
    xml_accessor :trading_name, :as => Name
    xml_accessor :urls, :as => []
  end
end
