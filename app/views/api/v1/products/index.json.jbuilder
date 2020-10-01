json.array! @products do |product|
  json.extract! product, :title, :type, :description, :rating, :price
end