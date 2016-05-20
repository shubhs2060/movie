# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(
    :email => "admin@rubyeffect.com",
    :country => "India",
    :admin => true,
    :password => "password",
    :password_confirmation => "password"
)
subscriber1 = Newsletter.create(
    :email => "test@rubyeffect.com"
)
subscriber2 = Newsletter.create(
    :email => "rest@rubyeffect.com"
)
subscriber3 = Newsletter.create(
    :email => "quest@rubyeffect.com"
)
category1 = Category.create(
    :name => "Romance"
)
category8 = Category.create(
    :name => "BioPic"
)
category2 = Category.create(
    :name => "Action"
)
category3 = Category.create(
    :name => "Sci Fi"
)
category4 = Category.create(
    :name => "Thriller"
)
category5 = Category.create(
    :name => "Comedy"
)
category6 = Category.create(
    :name => "Anime"
)
