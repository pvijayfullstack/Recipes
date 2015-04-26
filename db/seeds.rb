# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipes = [{:title => 'Green 1', :mint => '1', :apple => '1', :spinach => '2', :pear => '2', :cucumber => '2'},
           {:title => 'Green 2', :lime => '1', :ginger=> '1', :swisschard => '1', :apple => '2', :pear => '1', :cucumber => '1'},
           {:title => 'Green 3', :lemon => '1', :collardgreen => '1', :pear => '2', :celery => '6', :cucumber => '2'},
           {:title => 'Green 4', :orange => '2', :pear => '1', :romaine => '1', :carrot => '2', :cucumber => '1'}

         ]

recipes.each do |recipe|
  Recipe.create!(recipe)
end
