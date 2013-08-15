Fabricator :fulfillment_date, :class_name => DDEX::FulfillmentDate do
  fulfillment_date { Date.today }
  resource_release_references ["A1"]
end

Fabricator :consumer_fulfillment_date, :from => :fulfillment_date, :class_name => DDEX::ERN::ConsumerFulfillmentDate
