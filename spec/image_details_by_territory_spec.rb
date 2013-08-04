require "spec_helper"

describe DDEX::ImageDetailsByTerritory do
  let(:attributes) { Fabricate.attributes_for(:image_details_by_territory) }
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
      </ImageDetailsByTerritory>
    XML
  }
   
  it_should_behave_like "a DDEX element"
end
