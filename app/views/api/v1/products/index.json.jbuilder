json.array! @restaurants do |restaurant|
    json.extract! product, :id, :title, :type_of_product, :rating, :price
  end