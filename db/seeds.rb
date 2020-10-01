require 'faker'

if Rails.env.development?
    puts "Destroying DB..."
    
    Product.destroy_all

    puts "Done!"
end

puts "Creating products..."
sleep(1)
10.times do
    Product.create!(
        title: Faker::Food.fruits,
        type: "fruit",
        price: (Faker::Commerce.price * 100).to_i,
        rating: rand(1..5),
        description: Faker::Food.description
    )
end

puts "Products created!"