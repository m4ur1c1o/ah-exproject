# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(firstname: 'nacho', lastname: 'perez', gender: 'masculino', email: 'nacho@codea.mx', password: '123456', age: 25)

user.medical_history = MedicalHistory.create()

MedicalHistory.first.studies << Study.create

Study.first.hormone_levels << HormoneLevel.create(level:8, min: 2, max:30)

h = Hormone.create(name: 'Tiroxina', abbreviation: 'T4', unit: 'microgramo (ug)')
Hormone.create(name: 'Tiroxina', abbreviation: 'T4', unit: 'nanogramo (ng)')
Hormone.create(name: 'Tiroxina', abbreviation: 'T4', unit: 'picogramo (pg)')
Hormone.create(name: 'Tirotropina', abbreviation: 'TSH', unit: 'picogramo (pg)')

HormoneLevel.first.hormone = h

Symptom.create(name: "Estreñimiento")
Symptom.create(name: "Caida de cabello")
Symptom.create(name: "Dolor articular")
Symptom.create(name: "Fatiga")
Symptom.create(name: "Piel Seca")

user = User.create(firstname: "mau", lastname:"g", gender: "M", email: "mau@mail.com", password: "123456789", age: 28)
user.medical_history = MedicalHistory.create()


Study.first.hormone_levels << HormoneLevel.create(level:5, min: 2, max:10)
HormoneLevel.last.hormone = Hormone.last
