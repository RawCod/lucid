# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

file1 = URI.open('https://dwj199mwkel52.cloudfront.net/assets/core/press/portrait-sebastien-b27d9f62bd92411b2838dce94e12f59b3999ba6dd43a38234fd68ee302700ba3.jpg') # seb
file2 = URI.open('https://miro.medium.com/max/11520/0*u9cIet_TY8gODSKf') # panda
seb_description = ["gummy bear addict", "prefers left shoes to right", "suspicious of sheep", "thinks the unicyle is a primitive invention", "wreckless driver"]
event = Event.new(name: "SSAUNIER", location: "138 Kingsland Road, London, E2 8DY", description: seb_description, category: "Surprise", capacity: 84)
event.photo.attach(io: file1, filename: 'image.png', content_type: 'image/png')
event.photo.attach(io: file2, filename: 'image.png', content_type: 'image/png')
event.save

file3 = URI.open('https://dwj199mwkel52.cloudfront.net/assets/core/press/portrait-boris-9988eed6d967aa54cfe22a28815da34285cd21bdbe97842304088efeb4c38b9a.jpg') # boris
file4 = URI.open('https://img-s1.onedio.com/id-5a0ef2a646f98ece0eb0fd83/rev-0/w-900/h-505/f-gif/s-15220eb939fec6c154c6ff806c54fa245ac3f1c9.gif') # gold woman
boris_description = ["flat Earther", "APAB - All Plants Are Bastards", "trampoline expert", "gets on well with the elderly and children"]
event = Event.new(name: "BPAILLARD", location: "Tate Modern, London, SE1 9TG", description: boris_description, category: "Nightmare", capacity: 133)
event.photo.attach(io: file3, filename: 'image.png', content_type: 'image/png')
event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
