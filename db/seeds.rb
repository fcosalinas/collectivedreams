# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Idea.delete_all
IdeaLike.delete_all
Category.delete_all
IdeaCategory.delete_all


default_user = User.create(first_name: "Default", last_name: "User", email: "default@suenhoscolectivos.cl")
default_idea1 = Idea.create(description: "Asado con ColoColo")
default_idea2 = Idea.create(description: "Cirque du soleil a concepcion")
default_idealike1 = IdeaLike.create(user_id: default_user.id, idea_id: default_idea1.id)
default_idealike2 = IdeaLike.create(user_id: default_user.id, idea_id: default_idea2.id)
default_category1 = Category.create(description: "Deportes")
default_category2 = Category.create(description: "Circo")
default_idea_category1 = IdeaCategory.create(idea_id: default_idea1.id, category_id: default_category1.id)
default_idea_category2 = IdeaCategory.create(idea_id: default_idea2.id, category_id: default_category2.id)

