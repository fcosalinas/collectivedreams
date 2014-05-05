json.array!(@sales) do |sale|
  json.extract! sale, :id, :dream, :user, :payment_date, :amount, :instalments
  json.url sale_url(sale, format: :json)
end
