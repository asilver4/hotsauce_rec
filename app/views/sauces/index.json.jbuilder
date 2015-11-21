json.array!(@sauces) do |sauce|
  json.extract! sauce, :id, :description
  json.url sauce_url(sauce, format: :json)
end
