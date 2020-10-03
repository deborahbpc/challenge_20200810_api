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
10.times do
    name = Faker::Food.fruits
    product = Product.create!(
        title: name,
        type: "fruit",
        price: Faker::Commerce.price,
        rating: rand(0..5),
        description: Faker::Food.description, 
        filename: "#{name}.jpg",
        width: 600,
        height: 400
    )
    photo = URI.open('https://source.unsplash.com/600x400/?fruits')
    product.photo.attach(io: photo, filename: product.filename, content_type: 'image/jpg')
    puts "<<Creating #{product.title}>>"
end

puts "Products created!"

puts "Creating user..."
sleep(1)
User.create!(
    email: "teste@teste.com",
    password: ENV['SEED_PASSWORD']
)

puts "User created!"