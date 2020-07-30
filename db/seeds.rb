# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
require 'faker'

Patient.destroy_all

doctors = 10
patients = 30
appointments = 50

patients.times do |x|
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name)
end

specialties = ["Dentist", "Immunology", "Anesthesiology", "Dermatology", "Radiology"]

Doctor.destroy_all

doctors.times do |x|
  random = rand(0...specialties.size)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.middle_name, specialty: specialties[random], zip_code: Faker::Address.zip)
end

=end

Appointment.destroy_all
appointments = 50
appointments.times do |x|
  random_doc = rand(12..21)
  random_pat = rand(32..61)
  appointment = Appointment.create(date: Faker::Date.between(from: Date.today, to: 60.days.from_now), doctor: Doctor.find(random_doc), patient: Patient.find(random_pat))
end



