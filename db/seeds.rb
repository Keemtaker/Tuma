
# p "destroying companies"
#   # Company.all.each do |company|
#   #   unless company == Company.find(133)
#   #     company.destroy
#   #   end
#   # end

#   Company.destroy_all
# # p "destroying jobs"
#   # Job.all.each do |job|
#   #   unless job == Job.find(26)
#   #     job.destroy
#   #   end
#   # end

# p "destroying industries"
# Industry.destroy_all
# p "destroying perks"
# Perk.destroy_all

# p "Creating Perks and Industries"

# industries = ['IT & Software', 'SaaS', 'Finance', 'Healthcare', "Entertainment/Media", "Agency & Consulting", "Hardware", "Fashion", "Energy & Greentech", "Education", "Consumer Goods", "Other"]
# industries.each do |industry|
#   Industry.create!(name: industry)
# end
# software_industry = Industry.where(name: ["IT & Software", "SaaS", "Hardware"])
# fashion_industry = Industry.where(name: ["Fashion", "Consumer Goods"])
# finance_industry = Industry.where(name: ["IT & Software", "SaaS", "Finance", "Agency & Consulting"])
# hardware_industry = Industry.where(name: ["IT & Software", "Entertainment/Media", "Hardware"])
# media_industry = Industry.where(name: ["IT & Software", "Entertainment/Media"])

# perks = [ 'Friday Bars', 'Free Lunch', 'Skill Development', 'Free Coffee', 'Flexible Work Hours', 'Career Progression', 'Health Insurance', 'Games & Hangouts', 'Occasional Remote Work', 'Paid Vacation', 'Equity & Stock Options', 'Company Retreats', 'Maternity & Paternity Leave', 'Pet Friendly Office', 'Pension Plan']
# perks.each do |perk|
#   Perk.create!(name: perk)
# end
# saved_perks = nil
# saved_perks = Perk.all


# apple_description = "Apple products have always been designed for the way we work as much as for the way we live. Today they help employees to work more simply and productively, solve problems creatively, and collaborate with a shared purpose. And they’re all designed to work together beautifully. When people have access to iPhone, iPad, and Mac, they can do their best work and reimagine the future of their business."
# microsoft_description = "We believe in what people make possible. Our mission is to empower every person and every organization on the planet to achieve more."
# google_description = "Organize the world’s information and make it universally accessible and useful.
# Since the beginning, our goal has been to develop services that significantly improve the lives of as many people as possible.
# Not just for some. For everyone."

# p "Creating Software Companies"
# software_list = [
#   {name: "Apple", description: apple_description, website: "https://www.apple.com/", location: "California", address: "1 Infinite Loop; Cupertino, CA 95014", user: User.first, perks: saved_perks.uniq.sample(7), industries: software_industry },
#   {name: "Microsoft", description: microsoft_description, website: "https://www.microsoft.com/", location: "Washington", address: "Address: 1 Microsoft Way, Redmond, WA 98052, USA", user: User.first, perks: saved_perks.uniq.sample(8), industries: software_industry },
#   {name: "Google", description: google_description, website: "https://www.google.com/", location: "California", address: "1600 Amphitheatre Parkway", user: User.first, perks: saved_perks.uniq.sample(5), industries: software_industry }]

# Company.create!(software_list)

# adidas_description = "Employing more than 60,000 people in over 160 countries, we produce more than 850 million product units every year and generate sales of € 19 billion (all figures relate to 2016). These numbers alone can easily suggest that adidas is quite a complex organisation. True. But we keep things simple, lean and fast."
# nike_description = "Because we exist to serve athletes, we dare to design the future of sport. To us, innovation is about elevating human potential. We obsess the needs of the world’s best athletes, using their insights to create products that are beautiful and useful for everyone. To make big leaps, we take big risks. Incremental change won’t get us to where we want to go fast enough. So we pursue moonshots — like developing the first self-lacing shoe, running the first two-hour marathon, and committing to 100% renewable energy use in our facilities."
# rolex_description = "Pioneer in the development of the wristwatch, Rolex designs, develops and produces in-house all the essential components of its watches, from the casting of the gold alloys to the machining, crafting, assembly and finishing of the movement, case, dial and bracelet."

# p "Creating Fashion Companies"
# fashion_list = [
#   {name: "Adidas", description: adidas_description, website: "https://www.adidas.com/", location: "Herzogenaurach", address: "Adi-Dassler-Straße 1, 91074 Herzogenaurach, Germany", user: User.first, perks: saved_perks.uniq.sample(7), industries: fashion_industry },
#   {name: "Nike", description: nike_description, website: "https://www.nike.com/", location: "Beaverton", address: "One Bowerman Drive. Beaverton, OR 97005.", user: User.first, perks: saved_perks.uniq.sample(3), industries: fashion_industry },
#   {name: "Rolex", description: rolex_description, website: "https://www.rolex.com/", location: "Geneva", address: "Rue François-Dussaud 3-5-7 1211 Geneva 26", user: User.first, perks: saved_perks.uniq.sample(10), industries: fashion_industry }]

# Company.create!(fashion_list)

# barclays_description = "Our common purpose is to help people achieve their ambitions – in the right way. This sits at the core of our business and underpins everything that we do. We believe that only a business driven by strong values can deliver strong, sustainable returns."
# stripe_description = "Stripe is the best way to accept payments online and in mobile apps. We handle billions of dollars every year for forward-thinking businesses around the world."
# mastercard_description = "For 50 years, Mastercard® has been transforming how the world pays and gets paid. What started as a small group of bankers is now a driving force in the payments industry."

# p "Creating Finance Companies"
# finance_list = [
#   {name: "Barclays", description: barclays_description, website: "https://www.barclays.com/", location: "London", address: "1 Churchill Place, Canary Wharf, London", user: User.first, perks: saved_perks.uniq.sample(12), industries: finance_industry },
#   {name: "Stripe", description: stripe_description, website: "https://www.stripe.com/", location: "San Francisco", address: "Headquarters. 185 Berry Street. Suite 550. San Francisco, CA 94107.", user: User.first, perks: saved_perks.uniq.sample(14), industries: finance_industry },
#   {name: "Mastercard", description: mastercard_description, website: "https://www.mastercard.com/", location: "New York", address: "2000 Purchase Street, New York", user: User.first, perks: saved_perks.uniq.sample(3), industries: finance_industry }]

# Company.create!(finance_list)

# ea_description = "Electronic Arts Inc. is a leading global interactive entertainment software company. EA delivers games, content and online services for Internet-connected consoles, personal computers, mobile phones and tablets."
# beats_description = "Beats by Dr. Dre (Beats) is a leading audio brand founded in 2006 by Dr. Dre and Jimmy Iovine. Through its family of premium consumer headphones, earphones and speakers, Beats has introduced an entirely new generation to the possibilities of premium sound entertainment. The brand’s continued success helps bring the energy, emotion and excitement of playback in the recording studio back to the listening experience for music lovers worldwide. Beats was acquired by Apple Inc. in July 2014."
# hp_description = "Our vision is to create technology that makes life better for everyone, everywhere — every person, every organization, and every community around the globe. This motivates us — inspires us — to do what we do. To make what we make. To invent, and to reinvent. To engineer experiences that amaze. We won’t stop pushing ahead, because you won’t stop pushing ahead. You’re reinventing how you work. How you play. How you live. With our technology, you’ll reinvent your world."

# p "Creating Finance Companies"
# hardware_list = [
#   {name: "ElectronicArts", description: ea_description, website: "https://www.ea.com/", location: "Redwood City", address: "209 Redwood Shores Parkway Redwood City, CA 94065", user: User.first, perks: saved_perks.uniq.sample(4), industries: hardware_industry },
#   {name: "Beats", description: beats_description, website: "https://beatsbydre.com/", location: "California", address: "1 Infinite Loop; Cupertino, CA 95014", user: User.first, perks: saved_perks.uniq.sample(6), industries: hardware_industry },
#   {name: "Hewlett-Packard", description: hp_description, website: "https://www.mastercard.com/", location: "Palo Alto", address: "Palo Alto, CA (1501 Buildings) HP Inc. 1501 Page Mill Road, Palo Alto, CA 94304.", user: User.first, perks: saved_perks.uniq.sample(9), industries: hardware_industry }]

# Company.create!(hardware_list)

# cnn_description = "CNN.com is among the world's leaders in online news and information delivery. Staffed 24 hours, seven days a week by a dedicated staff in CNN's world headquarters in Atlanta, Georgia, and in bureaus worldwide, CNN.com relies heavily on CNN's global team of almost 4,000 news professionals. CNN.com features the latest multimedia technologies, from live video streaming to audio packages to searchable archives of news features and background information. The site is updated continuously throughout the day."
# whatsapp_description = "More than 1 billion people in over 180 countries use WhatsApp to stay in touch with friends and family, anytime and anywhere. WhatsApp is free2 and offers simple, secure, reliable messaging and calling, available on phones all over the world."
# twitter_description = "Give everyone the power to create and share ideas and information instantly, without barriers."

# p "Creating Media Companies"
# media_list = [
#   {name: "CNN", description: cnn_description, website: "https://edition.cnn.com/", location: "Atlanta", address: "190 Marietta St, Atlanta, GA 30303, USA", user: User.first, perks: saved_perks.uniq.sample(9), industries: media_industry },
#   {name: "Whatsapp", description: whatsapp_description, website: "https://whatsapp.com/", location: "Menlo Park", address: "WhatsApp Inc. 1601 Willow Road", user: User.first, perks: saved_perks.uniq.sample(7), industries: media_industry },
#   {name: "Twitter", description: twitter_description, website: "https://www.twitter.com/", location: "San Francisco", address: "1355 Market St #900, San Francisco, CA 94103, USA", user: User.first, perks: saved_perks.uniq.sample(10), industries: media_industry }]

# Company.create!(media_list)

# # Need to create Company new
# # name, description, website, location, address, user, photo, logo, perks, industries
# # name of tech companies [apple, Microsoft, Google]
# # name of fashion companies [adidas, nike, rolex]
# # name of  finance companies [Barclays, Stripe, Mastercard]
# # name of hardware companies [ElectronicArts, Beats, Hewlett-Packard]
# # name of Media companies [CNN, Watsapp, Twitter  ]
# Company.all.each do |company|
#   company.photo = Rails.root.join("app/assets/images/default-background.jpg").open
#    company.logo = Rails.root.join("app/assets/images/logo/#{company.name.gsub(" ","")}.svg").open
#    company.save
#  end
#  p "Success!!!"

# developer_one = Job.find(29).description
# # consultant_one = Job.find(65).description

# # #Creating Job new
# # #title, role, description, company_id, job_type, keywords, salary, pitch, email, location
# # #Create Job description for Developer, Engineer, Business, Sales, Consulting, Data Science
#  key = Job.find(29).keywords

#  e = "keemtaker@yahoo.com"
#  apple = Company.find_by(name: "CNN")
#  apple_pitch = apple.description
#  apple_location = apple.location
#  microsoft = Company.find_by(name: "Whatsapp")
#  microsoft_pitch = microsoft.description
#  microsoft_location = microsoft.location
#  google = Company.find_by(name: "Twitter")
#  google_pitch = google.description
#  google_location = google.location





# p "Creating Developer One Job"
# software_list = [
#   {title: "Customer Success Consultant", description: developer_one, company: apple, pitch: apple_pitch, role: "Customer Service", location: apple_location, job_type: "Full-time", keywords: key, email: e, salary: "Paid" },
#   {title: "Customer Service Agent", description: developer_one, company: microsoft, pitch: microsoft_pitch, role: "Other", location: microsoft_location, job_type: "Freelance", keywords: key, email: e, salary: "Commission" },
#   {title: "Customer Service", description: developer_one, company: google, pitch: google_pitch, role: "Customer Service", location: google_location, job_type: "Full-time", keywords: key, email: e, salary: "Paid" }]
# Job.create!(software_list)

# p "Creating Developer One Job"
# software_list = [
#   {title: "Customer Service Success", description: consultant_one, company: apple, pitch: apple_pitch, role: "Customer Service", location: apple_location, job_type: "Full-time", keywords: key, email: e, salary: "Paid" },
#   {title: "Customer Service Support", description: consultant_one, company: microsoft, pitch: microsoft_pitch, role: "Customer Service", location: microsoft_location, job_type: "Full-time", keywords: key, email: e, salary: "Paid" },
#   {title: "Customer Service Agent", description: consultant_one, company: google, pitch: google_pitch, role: "Customer Service", location: google_location, job_type: "Full-time", keywords: key, email: e, salary: "Paid" }]

# Job.create!(software_list)




# p "Success"


# # barclays_description = "Our common purpose is to help people achieve their ambitions – in the right way. This sits at the core of our business and underpins everything that we do. We believe that only a business driven by strong values can deliver strong, sustainable returns."
# # stripe_description = "Stripe is the best way to accept payments online and in mobile apps. We handle billions of dollars every year for forward-thinking businesses around the world."
# # mastercard_description = "For 50 years, Mastercard® has been transforming how the world pays and gets paid. What started as a small group of bankers is now a driving force in the payments industry."
