# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#the ! it will warn up and return an exception , without it will return null. 
#delete and make sure there is no duplicates
Artist.delete_all()
artist_one=Artist.create!( {name: "Oasis"} );
artist_two =Artist.create!( {name: "Justin Bieber"} );

Album.delete_all()
Album.create!( {name: "Be Here Now", artist_id: artist_one.id});
#artist_one.albums.create({name: "Be Here Now"}), same as doing the above just different syntax. by setting artist_id to the variable artist one we are making sure it is linked up
Album.create!( {name: "Definitely Maybe", artist_id: artist_one.id});
