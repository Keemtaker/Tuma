# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

perks = ['Free Lunch', 'Health Inusrance', 'Paid Vacation', 'Friday Bars', 'Equity & Stock Options', 'Free Coffee', 'Company Retreats', 'Maternity & Paternity Leave', 'Occasional Remote Work', 'Pension Plan']
perks.each do |perk|
  Perk.create!(name: perk)
end
