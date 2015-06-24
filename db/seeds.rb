# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do |n|
  question = Question.create!(title: "Question #{n}", body: "Description #{n}")
  puts "Created question: #{question.title}"
end

# Question.create(title: "Question 1", body: "Description 1")
# Question.create(title: "Question 2", body: "Description 2")
# Question.create(title: "Question 3", body: "Description 3")
# Question.create(title: "Question 4", body: "Description 4")
# Question.create(title: "Question 5", body: "Description 5")
# Question.create(title: "Question 6", body: "Description 6")
# Question.create(title: "Question 7", body: "Description 7")
# Question.create(title: "Question 8", body: "Description 8")
# Question.create(title: "Question 9", body: "Description 9")
# Question.create(title: "Question 10", body: "Description 10")
# Question.create(title: "Question 11", body: "Description 11")
# Question.create(title: "Question 12", body: "Description 12")
# Question.create(title: "Question 13", body: "Description 13")
# Question.create(title: "Question 14", body: "Description 14")
# Question.create(title: "Question 15", body: "Description 15")
# Question.create(title: "Question 16", body: "Description 16")
# Question.create(title: "Question 17", body: "Description 17")
# Question.create(title: "Question 18", body: "Description 18")
# Question.create(title: "Question 19", body: "Description 19")
# Question.create(title: "Question 20", body: "Description 20")
# Question.create(title: "Question 21", body: "Description 21")
# Question.create(title: "Question 22", body: "Description 22")
# Question.create(title: "Question 23", body: "Description 23")
# Question.create(title: "Question 24", body: "Description 24")
# Question.create(title: "Question 25", body: "Description 25")
# Question.create(title: "Question 26", body: "Description 26")
# Question.create(title: "Question 27", body: "Description 27")
# Question.create(title: "Question 28", body: "Description 28")
# Question.create(title: "Question 29", body: "Description 29")
# Question.create(title: "Question 30", body: "Description 30")
