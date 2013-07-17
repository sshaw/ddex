module DDEX
  class File < Element
    xml_accessor :file_name
    xml_accessor :file_path
    xml_accessor :hash_sum, :in => "HashSum"
    xml_accessor :hash_sum_algorithm, :from => "HashSumAlgorithmType", :in => "HashSum"
    xml_accessor :url, :from => "URL"
  end
end
