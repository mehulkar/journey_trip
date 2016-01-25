# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.find_or_create_by(name: "Austin")
Location.find_or_create_by(name: "Chicago")
Location.find_or_create_by(name: "Portland")
Location.find_or_create_by(name: "Las Vegas")
Location.find_or_create_by(name: "Seattle")
Location.find_or_create_by(name: "San Diego")
Location.find_or_create_by(name: "LA")
