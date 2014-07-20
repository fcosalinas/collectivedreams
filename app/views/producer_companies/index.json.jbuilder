json.array!(@producer_companies) do |producer_company|
  json.extract! producer_company, :id, :name, :address, :phone
  json.url producer_company_url(producer_company, format: :json)
end
