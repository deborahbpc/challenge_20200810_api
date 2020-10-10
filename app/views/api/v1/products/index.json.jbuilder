json.array! @products do |product|
  json.extract! product, :id, :title, :type, :description
  json.extract! product, :filename, :height, :width
  json.extract! product, :price, :rating, :created_at
end