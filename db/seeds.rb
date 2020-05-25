# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classes = {"ME365": 14423, "CS159": 9983, "ME200": 223, "PHYS172": 33441}

classes.each do |class_title, room|
    SchoolClass.create(title: class_title, room_number: room)
end