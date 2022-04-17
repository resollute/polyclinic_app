# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Patients
user1 = User.create!(phone:"0671010888", name:"David", surname:"Gutling", password:"111111", patient:true)
user1.save!

user2 = User.create!(phone:"0671111888", name:"David", surname:"Gutling", password:"111111", patient:true)
user2.save!

user3 = User.create!(phone:"0671212888", name:"David", surname:"Gutling", password:"111111", patient:true)
user3.save!

user4 = User.create!(phone:"0671313888", name:"David", surname:"Gutling", password:"111111", patient:true)
user4.save!

user5 = User.create!(phone:"0671414888", name:"David", surname:"Gutling", password:"111111", patient:true)
user5.save!

# Doctors
user6 = User.create!(phone:"0671010777", name:"Doctor", surname:"Doctor", password:"111111", doctor:true)
user6.save!

user7 = User.create!(phone:"0671111777", name:"Doctor", surname:"Doctor", password:"111111", doctor:true)
user7.save!

user8 = User.create!(phone:"0671212777", name:"Doctor", surname:"Doctor", password:"111111", doctor:true)
user8.save!

user9 = User.create!(phone:"0671313777", name:"Doctor", surname:"Doctor", password:"111111", doctor:true)
user9.save!

user10 = User.create!(phone:"0671414777", name:"Doctor", surname:"Doctor", password:"111111", doctor:true)
user10.save!

# Admin
user11 = User.create!(phone:"0671515999", name:"Admin", surname:"Admin", password:"111111", admin:true)
user11.save!

cat1 = Category.create!(title: "Dentist")
cat1.save!


