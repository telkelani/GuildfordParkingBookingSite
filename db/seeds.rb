# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#These will be loaded every time the database is loaded
#This is essentially the default locations (not to change)
#Location database not meant to be edited by user
Location.create!([
{ "name": "Farnham Road", "latitude": "51.2350098","longitude": "-0.5805567","capacity":"917"},
{ "name": "York Road", "latitude": "51.2391383", "longitude": "-0.57207","capacity":"605"},
{ "name": "Leapale Road", "latitude": "51.2373222", "longitude": "-0.5755223","capacity":"384"}
])
