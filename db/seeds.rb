# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all


i1 = Instructor.create(name: "Instructor1")
i2 = Instructor.create(name: "Instructor2")

s1 = Student.create(name: "Name1",major: "Major1", age: 19, instructor_id: i1.id)
s2 = Student.create(name: "Name2",major: "Major2", age: 20, instructor_id: i1.id)
s3 = Student.create(name: "Name3",major: "Major3", age: 21, instructor_id: i2.id)
s4 = Student.create(name: "Name4",major: "Major4", age: 22, instructor_id: i2.id)


