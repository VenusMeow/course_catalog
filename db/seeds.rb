# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructor_records = JSON.parse(File.read(File.join(Rails.root, 'db', 'Instructor.json')))
instructor_records.each do |record|
  Instructor.create(middle: record['middle'],
                last: record['last'],
                first: record['first'],
                email: record['email'],
                idnum: record['id'])

end
