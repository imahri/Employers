# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Employer.create(name: "John Doe", position: "Full-stack", salary: "100000")
Employer.create(name: "Jane Doe", position: "Front-end", salary: "80000")
Employer.create(name: "John Smith", position: "Back-end", salary: "90000")
Employer.create(name: "Mahri Imad", position: "Mobile dev", salary: "15000")