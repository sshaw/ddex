Fabricator :fulfillment_date, :from => DDEX::FulfillmentDate do
  fulfillment_date { Date.today }
  resource_release_references ["A1"]
end
