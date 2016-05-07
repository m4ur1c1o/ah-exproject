# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(firstname: 'nacho', lastname: 'perez', gender: 'masculino', email: 'nacho@codea.mx', password: '123456', age: 25)

u = User.first

u.medical_history = MedicalHistory.create()

MedicalHistory.first.studies << Study.create

Study.first.hormone_levels << HormoneLevel.create(level:8, min: 2, max:30)

HormoneLevel.first.hormones << Hormone.create