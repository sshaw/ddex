require "spec_helper"

describe DDEX::MusicalWorkId do
  let(:attributes) { Fabricate.attributes_for(:musical_work_id) }
  let(:xmldoc) {
    <<-XML
      <MusicalWorkId IsReplaced="#{attributes["replaced"]}">
        <ISWC>#{attributes["iswc"]}</ISWC>
        <OpusNumber>#{attributes["opus_number"]}</OpusNumber>
        <ComposerCatalogNumber>#{attributes["composer_catalog_number"][0]}</ComposerCatalogNumber>
        #{to_xml(attributes["proprietary_ids"])}
      </MusicalWorkId>
    XML
  }

  it_should_behave_like "a DDEX element"
end
