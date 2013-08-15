Fabricator :technical_image_details, :class_name => DDEX::ERN::TechnicalImageDetails do
  technical_resource_details_reference "A1"
  drm_platform_type
  container_format
  image_codec_type
  image_width
  image_height
  aspect_ratio 1.77
  color_depth 48
  image_resolution 800
  preview false
  preview_details
  fulfillment_date
  consumer_fulfillment_date
  file_availability_descriptions(:count => 1) { Fabricate(:file_availability_description) }
  files(:count => 1) { Fabricate(:file) }
  fingerprints(:count => 1) { Fabricate(:fingerprint) }
end
