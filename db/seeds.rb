# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # require "open-uri"

# # file1 = URI.open('https://dwj199mwkel52.cloudfront.net/assets/core/press/portrait-sebastien-b27d9f62bd92411b2838dce94e12f59b3999ba6dd43a38234fd68ee302700ba3.jpg') # seb
# file2 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1629898449/gold_ixirz8.gif') # gold woman
# seb_description = ["gummy bear addict", "prefers left shoes to right", "suspicious of sheep", "thinks the unicyle is a primitive invention", "wreckless driver"]
# event = Event.new(name: "SSAUNIER", location: "138 Kingsland Road, London, E2 8DY", description: seb_description, category: "Surprise", capacity: "84")
# # event.photos.attach(io: file1, filename: 'image.png', content_type: 'image/png')
# event.photo.attach(io: file2, filename: 'image.png', content_type: 'image/png')
# event.save

# # file3 = URI.open('https://dwj199mwkel52.cloudfront.net/assets/core/press/portrait-boris-9988eed6d967aa54cfe22a28815da34285cd21bdbe97842304088efeb4c38b9a.jpg') # boris
# file4 = URI.open('https://c.files.bbci.co.uk/957C/production/_111686283_pic1.png') # panda
# boris_description = ["flat Earther", "APAB - All Plants Are Bastards", "trampoline expert", "gets on well with the elderly and children"]
# second_event = Event.new(name: "BPAILLARD", location: "Tate Modern, London, SE1 9TG", description: boris_description, category: "Nightmare", capacity: "133")
# # second_event.photos.attach(io: file3, filename: 'image.png', content_type: 'image/png')
# second_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
# second_event.save

# # @events << event
# # @events << second_event

# van_gogh = Event.create!(name: "The Starry Night - Vincent van Gogh", category: "Acrylic", location: "Madrid", description: "kjahdflkjahsdlfk")
# van_gogh.photo.attach(io: URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1629898449/gold_ixirz8.gif'), filename: "vangogh.jpg", content_type: "image/jpg") # gold woman

# # new_event = Event.new(name: "PANDA", location: "138 Kingsland Road, London, E2 8DY", description: "Panda's dream", category: "Dream", capacity: "67")
# # new_event.photo.attach("./../../assets/images/panda", filename: 'image.png', content_type: 'image/png')

# puts "data loaded successfully"
