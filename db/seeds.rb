# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

artist1 = Artist.create(name: "David Bowie")
artist2 = Artist.create(name: "Freddie Mercury")
artist3 = Artist.create(name: "Adele")

# Create songs for each artist
Song.create(title: "Space Oddity", artist: artist1)
Song.create(title: "Starman", artist: artist1)
Song.create(title: "Heroes", artist: artist1)

Song.create(title: "Bohemian Rhapsody", artist: artist2)
Song.create(title: "Don't Stop Me Now", artist: artist2)

Song.create(title: "Hello", artist: artist3)
Song.create(title: "Someone Like You", artist: artist3)
Song.create(title: "Rolling in the Deep", artist: artist3)

puts "Seeded #{Artist.count} artists and #{Song.count} songs."
