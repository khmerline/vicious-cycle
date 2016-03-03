json.array!(@products) do |product|
  json.extract! product, :id, :title, :catalog, :product_type, :color, :description, :price, :discount
  json.url product_url(product, format: :json)
end
