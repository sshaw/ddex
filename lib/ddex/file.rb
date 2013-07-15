module DDEX
  class File < Element
    xml_accessor :file_name, :from => "FileName"
    xml_accessor :file_path, :from => "FilePath"
    xml_accessor :hash_sum, :from => "HashSum", :in => "HashSum"
    xml_accessor :hash_sum_algorithm, :from => "HashSumAlgorithmType", :in => "HashSum"
    xml_accessor :url, :from => "URL"
  end
end
