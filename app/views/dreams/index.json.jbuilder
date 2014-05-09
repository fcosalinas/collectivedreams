json.array!(@dreams) do |dream|
  json.extract! dream, :id, :description, :title, :place, :max_assistance, :min_assistance, :event_date, :event_cost
  json.url dream_url(dream, format: :json)
end
