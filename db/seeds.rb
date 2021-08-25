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
event = Event.new(name: "Dream")
event.photo.attach(io: file1, filename: 'image.png', content_type: 'image/png')
event.photo.attach(io: file2, filename: 'image.png', content_type: 'image/png')
event.save
