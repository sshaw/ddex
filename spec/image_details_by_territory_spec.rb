describe DDEX::ImageDetailsByTerritory do
  let(:attributes) { Fabricate.attributes_for(:image_details_by_territory, :image_type => Fabricate(:image_type)) }
  let(:xmldoc) {
    <<-XML
      <ImageDetailsByTerritory>
        <TerritoryCode>Worldwide</TerritoryCode>
        <TechnicalImageDetails>
            <TechnicalResourceDetailsReference>T3</TechnicalResourceDetailsReference>
            <ImageCodecType>JPEG</ImageCodecType>
            <ImageHeight>1080</ImageHeight>
            <ImageWidth>1920</ImageWidth>
            <File>
              <FileName>image.jpg</FileName>
              <HashSum>
                <HashSum>I1XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX</HashSum>
                <HashSumAlgorithmType>MD5</HashSumAlgorithmType>
              </HashSum>
            </File>
        </TechnicalImageDetails>
      </ImageDetailsByTerritory>
    XML
  }
end
