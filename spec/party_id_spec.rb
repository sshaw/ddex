require "spec_helper"

describe DDEX::PartyId do
  let(:attributes) { Fabricate.attributes_for(:party_id) }
  let(:xmldoc) { %|<PartyId Namespace="#{attributes["namespace"]}" IsDPID="#{attributes["dpid"]}" IsISNI="#{attributes["isni"]}">#{attributes["value"]}</PartyId>| }

  it_should_behave_like "a DDEX element"
end

  
