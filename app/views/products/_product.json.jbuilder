json.extract! product, :id, :name, :code, :brand, :manufacturer, :description, :subcategory_id, :datasheet, :created_at, :updated_at
json.url product_url(product, format: :json)
json.datasheet do
  json.array!(product.datasheet) do |datasheet|
    json.id datasheet.id
    json.url url_for(datasheet)
  end
end
