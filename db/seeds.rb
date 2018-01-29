# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

perks = [ 'Friday Bars', 'Free Lunch', 'Skill Development', 'Free Coffee', 'Flexible Work Hours', 'Career Progression', 'Health Insurance', 'Games & Hangouts', 'Occasional Remote Work', 'Paid Vacation', 'Equity & Stock Options', 'Company Retreats', 'Maternity & Paternity Leave', 'Pet Friendly Office', 'Pension Plan']
perks.each do |perk|
  Perk.create!(name: perk)
end

industries = ['IT & Software', 'SaaS', 'Finance', 'Healthcare', "Entertainment/Media", "Agency & Consulting", "Hardware", "Fashion", "Energy & Greentech", "Education", "Consumer Goods", "Other"]
industries.each do |industry|
  Industry.create!(name: industry)
end

