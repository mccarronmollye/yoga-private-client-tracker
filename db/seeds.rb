# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


clients = [{org_name: "University of Pennsylvania", point_of_contact: "Mr. Brightside", email: "brightside@upenn.edu"},
         {org_name: "Comcast", point_of_contact: "Milly Sust", email: "msust@comcast.com"},
         {org_name: "YMCA - Center City", point_of_contact: "Leah Ring", email: "lring@ymca.com"},
         {org_name: "Temple University", point_of_contact: "Jack Jones", email: "jjones@temple.edu"},
         {org_name: "St. Francis Church", point_of_contact: "Marium Rosendale", email: "marium4567@gmail.com"}]

clients.each do |client|
  Client.create(client)
end
