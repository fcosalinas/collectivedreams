json.array!(@producer_types) do |producer_type|
  json.extract! producer_type, :id, :tipo
  json.url producer_type_url(producer_type, format: :json)
end
