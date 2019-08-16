# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.new(name: "Andrew Peterson", bio: "Folk Singer/Songwriter, Fiction Author")
artist2 = Artist.new(name: "Ralph Vaughn-Williams", bio: "Classical Composer")
artist3 = Artist.new(name: "Matt Maher", bio: "Christian Music Artist")

artist1.genres << Genre.create(name: "folk")
artist2.genres << Genre.create(name: "classical")
artist3.genres << Genre.create(name: "christian")

artist1.songs << Song.create(name: "Dancing in the Minefields", genre_id: 1)
artist2.songs << Song.create(name: "Fantasia on a Theme, Thomas Tallis", genre_id: 2)
artist3.songs << Song.create(name: "Bread of Life", genre_id: 3)

artist1.save 
artist2.save 
artist3.save 

puts artist1
puts artist2
puts artist3