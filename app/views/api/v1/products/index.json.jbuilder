json.array! @products do |product|
  json.extract! product, :title, :type, :description
  json.extract! product, :price, :rating
end