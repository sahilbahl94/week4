
User.destroy_all 
Product.destroy_all 
Bid.destroy_all


puts "all users & products destroyed..."

10.times do |t|
	User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

10.times do |t|
	Product.create(title: Faker::Commerce.product_name, description: Faker::Lorem.sentence, deadline: Faker::Time.forward(2, :morning), user_id: rand(1..5))
end

10.times do |t|
	Bid.create(amount: rand(1..10), product_id: rand(1..5))
end
