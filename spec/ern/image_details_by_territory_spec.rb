require "spec_helper"

describe DDEX::ERN::ImageDetailsByTerritory do
  let(:attributes) { Fabricate.attributes_for(:ern_image_details_by_territory) }
  let(:xmldoc) {
    <<-XML
      <ImageDetailsByTerritory LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
        <TerritoryCode>#{attributes["territory_codes"][0]}</TerritoryCode>
        <ExcludedTerritoryCode>#{attributes["excluded_territory_codes"][0]}</ExcludedTerritoryCode>
        #{to_xml(attributes["resource_contributors"])}
        #{to_xml(attributes["indirect_resource_contributors"])}
        #{to_xml(attributes["clines"])}
        #{attributes["description"].to_xml}
        #{attributes["courtesy_line"].to_xml}
        #{attributes["original_resource_release_date"].to_xml}
        #{attributes["fulfillment_date"].to_xml}
        #{to_xml(attributes["keywords"])}
        #{to_xml(attributes["synopsis"])}
        #{to_xml(attributes["genres"])}
        #{to_xml(attributes["parental_warning_types"])}
        #{to_xml(attributes["technical_image_details"])}
      </ImageDetailsByTerritory>
    XML
  }

  #it "a" do p described_class.roxml_attrs.map { |a| a.accessor }.sort end  
  #it "a" do puts xmldoc; p"="*20; puts described_class.new(attributes).technical_image_details[0].to_xml end
  #it "a" do puts xmldoc; p"="*20; puts described_class.new(attributes).to_xml end
  it_should_behave_like "a DDEX element"
end
