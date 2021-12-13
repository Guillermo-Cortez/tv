# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@colours = ["Blue ", "Green", "Red", "Orange", "Violet", "Indigo", "Yellow"];
@colours.each do |colour|

    Colour.create name: "#{colour}"

end
puts 'Colors has been created'

@brands = [["Gucci", "---"], ["Zara", "---"], ["Chanel", "---"], ["Nike", "---"], ["Louis Vuitton", "---"], ["Cartier", "---"]];
@brands.each do |brand, comment|

    Brand.create name: "#{brand}", description: "#{comment}"

end
puts 'Brands has been created'


10.times do
    month = [1,2,3,4,5,6,7,8,9,10,11,12].sample
    day = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28].sample
    number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28].sample
    Broadcast.create date: Date.parse("2021-#{month}-#{day}"), number: "#{number}"

end
puts 'Broadcast has been created'

@hosts = [['Marcelo', 'Lopez', true, 30],['Juan', 'Gutierrez', true, 34],['Fernando', 'Nestares', true, 28],['Luisa', 'Gimenez', false, 24],];
@hosts.each do |name, last, sex, age|

    Host.create first_name: name, last_name: last, sex: sex, age: age

end
puts 'Hosts has been created'