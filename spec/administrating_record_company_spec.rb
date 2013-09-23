require "spec_helper"

describe DDEX::V20120404::DDEXC::AdministratingRecordCompany do
  let(:attributes) { Fabricate.attributes_for(:administrating_record_company) }
  let(:xmldoc) {
    <<-XML
      <AdministratingRecordCompany Namespace="#{attributes["namespace"]}" UserDefinedValue="#{attributes["user_defined_value"]}" AdministratingRecordCompanyRole="#{attributes["role"]}">
        #{attributes["party_id"].to_xml}
        #{to_xml(attributes["party_names"])}
      </AdministratingRecordCompany>
    XML
  }  

  it_should_behave_like "a DDEX element"
end
