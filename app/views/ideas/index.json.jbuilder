json.array!(@ideas) do |idea|
  json.extract! idea, :id, :description, :title, :possible_places, :max_assistance, :min_assistance, :possible_dates, :creation_date, :max_cost, :min_cost, :double
  json.url idea_url(idea, format: :json)
end
