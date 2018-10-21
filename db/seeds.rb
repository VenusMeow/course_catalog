# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructor_records = JSON.parse(File.read('public/instructor.json'))
instructor_records.each do |record|
  Instructor.create(middle: record['middle'],
                last: record['last'],
                first: record['first'],
                email: record['email'],
                idnum: record['id'])
end


subject_records = JSON.parse(File.read('public/subject.json'))
subject_records.each do |record|
  Subject.create(name: record['name'],
                abbreviation: record['abbreviation'],
                idnum: record['id'])
end

subjects = Subject.all

course_records = JSON.parse(File.read('public/course.json'))
course_records.each do |record|
  if Subject.exists?(:idnum => record['subjects'][0]['id'])
    Course.create(name: record['name'],
                  code: record['code'],
                  description: record['description'],
                  requirements: record['requirements'].join(","),
                  subjectnum: record['subjects'][0]['id'],
                  subject_id: subjects.where(idnum: record['subjects'][0]['id']).first.id)
  else
    Course.create(name: record['name'],
                  code: record['code'],
                  description: record['description'],
                  requirements: record['requirements'].join(","),
                  subjectnum: record['subjects'][0]['id'],
                  subject_id: -1)
  end
end
