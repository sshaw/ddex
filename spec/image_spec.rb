# DDEX DSR & MWL only...
#
# require "spec_helper"

# describe DDEX::V20120404::DDEXC::Image do
#   let(:attributes) { Fabricate.attributes_for(:image) }
#   let(:xmldoc) {
#     <<-XML
#       <Image LanguageAndScriptCode="#{attributes["language_and_script_code"]}">
#         #{attributes["image_type"].to_xml}
#         <IsArtistRelated>#{attributes["artist_related"]}</IsArtistRelated>
#         #{to_xml(attributes["image_ids"])}
#         <ResourceReference>#{attributes["resource_reference"]}</ResourceReference>
#         #{to_xml(attributes["titles"])}
#         #{attributes["creation_date"].to_xml}
#         #{to_xml(attributes["image_details_by_territory"])}
#       </Image>
#     XML
#   }

#   it_should_behave_like "a DDEX element"
# end
