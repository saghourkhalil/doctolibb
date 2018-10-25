require 'faker'

#12.times do
 #user = Patient.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name)
 #dr = Doctor.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, speciality:Faker::Job.position, postal_code:Faker::Address.postcode)
#end


#10.times do
  #rdv = Appointment.create(date:"#{Faker::Date.forward(10)}", doctor:Doctor.find(1+rand(12)), patient:Patient.find(1+rand(12)))
#end

#5.times do |i|
 # cities = City.create(city_name:Faker::Address.city,
  #  appointment:Appointment.find(i + 1))
#

speciality = []
tab = ["dentiste", "chirurgien", "dermatologue","pneumologue","generaliste"]
5.times do |index|
   speciality << Speciality.create!(name_speciality:tab[index] )
end


5.times do |index|
   doctor = Doctor.create!(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, postal_code:Faker::Address.postcode)
   speciality[index].doctors << doctor
   i = Random.new.rand(1..2)
   i.times do
       speciality[Random.new.rand(0..4)].doctors << doctor
   end
end