# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Charge.delete_all
Kitten.delete_all
Wallet.delete_all
Order.delete_all

10.times do 
  User.create(email: Faker::Internet.safe_email,password:Faker::Address.city) 
end

30.times do 
  Wallet.create(amount:Faker::Number.decimal(l_digits: 2),quantity:Faker::Number.between(from: 1, to: 100))
end
 
#50.times do
#  Charge.create(user_id:User.all.sample.id,wallet_id:Wallet.all.sample,stripe_id:Faker::Lorem.characters(number: 10),token:Faker::Lorem.characters(number: 2)) 
#end

30.times do 
  Kitten.create(description:Faker::Cannabis.cannabinoid,price:Faker::Number.decimal(l_digits: 2),name:Faker::Cannabis.buzzword)
end

#30.times do 
#  Order.create(user_id:User.all.sample.id,wallet_id:Wallet.all.sample.id,charge_id:Charge.all.sample.id)
#end




