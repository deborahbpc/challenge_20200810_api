json.array! @products do |product|
  json.extract! product, :id, :title, :type_of_product, :rating, :price
end