# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

template_1 = Template.create(:name => "Template 1", :content => ["class" => "Components::HelloWorld"])
Category.create([{:name => "Category 1", :template => template_1}, {:name => "Category 2", :template => template_1}, {:name => "Category 3", :template => template_1}])