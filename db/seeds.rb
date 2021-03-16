# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

surveys = Survey.create([
  { title: 'A Dog And His Bone' },
  { title: 'A Dogs Best Day' }
])

Question.create([
  {
    question: 'What is the best flavor of bone?',
    survey_id: surveys.first
  },
  {
    question: 'What is the best day for your dog?',
    survey_id: surveys.second
  }
])
