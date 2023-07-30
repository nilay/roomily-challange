# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(name: 'Nilay Anand', email: 'nilayanand@gmail.com')
Incident.create(
  title: "Its the Paw-lidays A Dog-Friendly Party",
  description: 'Events are nothing without guests, please attend',
  severity: :sev1,
  creator: user
)