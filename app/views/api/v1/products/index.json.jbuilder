json.array! @products do |product|
  json.extract! product, :id, :title, :rating, :description
end