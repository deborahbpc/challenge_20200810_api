require 'faker'
require 'open-uri'

if Rails.env.development?
    puts "Destroying DB..."
    
    Product.destroy_all
    User.destroy_all

    puts "Done!"
end

puts "Creating products..."
sleep(1)
5.times do
    product = Product.create!(
        title: Faker::Food.fruits,
        type: "fruit",
        price: (Faker::Commerce.price * 100).to_i,
        rating: rand(1..5),
        description: Faker::Food.description 
    )
    photo = URI.open('https://source.unsplash.com/600x400/?fruits')
    product.photo.attach(io: photo, filename: "#{product.title}.jpg", content_type: 'image/jpg')
    puts "<<Creating #{product.title}>>"
end

puts "Products created!"

puts "Creating user..."
sleep(1)
User.create!(
    email: "teste@teste.com",
    password: "123123"
)

puts "User created!"