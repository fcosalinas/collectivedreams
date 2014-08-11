json.array!(@tenders) do |tender|
  json.extract! tender, :id, :producer_company_id, :idea_id, :place, :price, :event_date, :max_capacity, :min_capacity
  json.url tender_url(tender, format: :json)
end
