# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(phone:"0671010888", name:"David", surname:"Gutling", password:"111111", patient:true)
user1.save!

user2 = User.create!(phone:"0671212777", name:"Doctor", surname:"Doctor", password:"111111", doctor:true)
user2.save!

user3 = User.create!(phone:"0671515777", name:"Admin", surname:"Admin", password:"111111", admin:true)
user3.save!


