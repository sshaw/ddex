Fabricator :rights_agreement_id, :class_name => DDEX::RightsAgreementId do
  mwli %w[A123]
  proprietary_ids(:count => 1) { Fabricate(:proprietary_id) }
end
