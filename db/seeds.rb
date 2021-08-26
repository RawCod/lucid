# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Event.destroy_all
User.destroy_all

puts "creating seeds"

user = User.create!(email: "hubabuba.pop@gmail.com", password: "Helloooooo!", first_name: "Holly", last_name: "Wrench")
puts user

5.times do
  file = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1629898449/gold_ixirz8.gif') # gold woman
  seb_description = "gummy bear addict, prefers left shoes to right, suspicious of sheep, thinks the unicyle is a primitive invention, wreckless driver"
  event = Event.new(user_id: User.first.id, name: "SEBSAN", location: "138 Kingsland Road, London, E2 8DY", description: seb_description, category: "Surprise", capacity: "84", price: 25.00)
  # event.photos.attach(io: file, filename: 'image.png', content_type: 'image/png')
  event.photo.attach(io: file, filename: 'gold_ixirz8.gif', content_type: 'image/gif')
  event.save!

  file2 = URI.open('https://c.files.bbci.co.uk/957C/production/_111686283_pic1.png') # panda
  boris_description = "flat Earther, APAB - All Plants Are Bastards, trampoline expert, gets on well with the elderly and children"
  second_event = Event.new(user_id: user.id, name: "BOPAP", location: "Tate Modern, London, SE1 9TG", description: boris_description, category: "Nightmare", capacity: "133", price: 25.00)
  # second_event.photos.attach(io: file2, filename: 'image.png', content_type: 'image/png')
  second_event.photo.attach(io: file2, filename: '_111686283_pic1.png', content_type: 'image/png')
  second_event.save!

  file3 = URI.open('https://images.genius.com/961166a01cda22ae84b2606660a0b4a2.493x500x1.jpg') # mouth eye
  madonna_description = "best cheerleader in Texas, has a taxidermied chicken on her nightstand, shes only got four minutes to save the world"
  third_event = Event.new(user_id: user.id, name: "MADONNA", location: "Sky Tower, 9 Hamilton Ave, Surfers Paradise QLD 4217, Australia", description: madonna_description, category: "Dream", capacity: "23", price: 25.00)
  # third_event.photos.attach(io: file3, filename: 'image.png', content_type: 'image/png')
  third_event.photo.attach(io: file3, filename: 'image.png', content_type: 'image/png')
  third_event.save!
  # @events << event
  # @events << second_event

  file4 = URI.open('https://www.metalocus.es/sites/default/files/styles/mopis_news_gallery_deskop/public/file-images/metalocus_Caravan-Palace-Lone-Digger_08.png?itok=_x6OlskV') # lone digger dogs
  zorro_description = "eats tyrants for breakfast, has a thing for brunettes, plays miniclip on his lunch breaks, has an altar ego called Don Diego de la Vega, pumba is his spirit animal"
  fourth_event = Event.new(user_id: user.id, name: "ZORRO", location: "Los Angeles, CA 90068, United States", description: zorro_description, category: "Nightmare", capacity: "666", price: 25.00)
  # fourth_event.photos.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.save!
end


puts "data loaded successfully"
