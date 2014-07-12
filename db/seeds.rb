# encoding: UTF-8
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
Tag.delete_all
IdeaCategory.delete_all
Dream.delete_all
DreamCategory.delete_all
IdeaTag.delete_all
DreamTag.delete_all
DreamLike.delete_all
Sale.delete_all


default_user1 = User.create(first_name: "Default", last_name: "User", email: "default@sueñoscolectivos.cl", password: "jajeji")
default_user2 = User.create(first_name: "Esteban", last_name: "Calvo", email: "estebancalv@hotmail.com", password: "jajeji")
default_user3 = User.create(first_name: "Carlos", last_name: "Maturana", email: "cmaturana@gmail.com", password: "jajeji")
default_idea1 = Idea.create(title: "Asado con ColoColo", description: "Asado con el primer equipo de Colo-Colo", max_assistance: 22, min_assistance: 11, creation_date: DateTime.now)
default_idea2 = Idea.create(title: "Cirque du soleil a concepcion", description: "Una visita de parte del Cirque du Soleil a la ciudad de Concepción", max_assistance: 22, min_assistance: 11, creation_date: DateTime.now)
default_idealike1 = IdeaLike.create(user_id: default_user1.id, idea_id: default_idea1.id)
default_idealike2 = IdeaLike.create(user_id: default_user1.id, idea_id: default_idea2.id)
default_category1 = Category.create(description: "Deportes")
default_category2 = Category.create(description: "Circo")
default_category3 = Category.create(description: "Música")
default_tag1 = Tag.create(description: "famoso")
default_tag2 = Tag.create(description: "masivo")
default_tag3 = Tag.create(description: "íntimo")
default_tag4 = Tag.create(description: "internacional")
default_idea_category1 = IdeaCategory.create(idea_id: default_idea1.id, category_id: default_category1.id)
default_idea_category2 = IdeaCategory.create(idea_id: default_idea2.id, category_id: default_category2.id)
default_dream1 = Dream.create(description: "Los Bunkers en concierto unplugged para pocas personas", 
	title: "Los Bunkers Unplugged", place: "Teatro La Cúpula", max_assistance: 300, min_assistance: 100, 
	event_date: DateTime.strptime("09/11/2014", "%d/%m/%Y"), event_cost: 5000.0)
default_dream2 = Dream.create(description: "Clínica de tenis con Pete Sampras en San Carlos de Apoquindo", 
	title: "Clínica de tenis con Pete Sampras", place: "Club de tenis San Carlos de Apoquindo", max_assistance: 120, 
	min_assistance: 50, event_date: DateTime.strptime("15/10/2014", "%d/%m/%Y"), event_cost: 17000.0)
default_dreamcategory1 = DreamCategory.create(dream_id: default_dream1.id, category_id: default_category3.id)
default_dreamcategory2 = DreamCategory.create(dream_id: default_dream2.id, category_id: default_category1.id)
default_ideatag1 = IdeaTag.create(idea_id: default_idea1.id, tag_id: default_tag3.id)
default_ideatag2 = IdeaTag.create(idea_id: default_idea2.id, tag_id: default_tag1.id)
default_ideatag3 = IdeaTag.create(idea_id: default_idea2.id, tag_id: default_tag2.id)
default_ideatag4 = IdeaTag.create(idea_id: default_idea2.id, tag_id: default_tag4.id)
default_dreamtag1 = DreamTag.create(dream_id: default_dream1.id, tag_id: default_tag2.id)
default_dreamtag2 = DreamTag.create(dream_id: default_dream1.id, tag_id: default_tag3.id)
default_dreamtag3 = DreamTag.create(dream_id: default_dream2.id, tag_id: default_tag1.id)
default_dreamtag4 = DreamTag.create(dream_id: default_dream2.id, tag_id: default_tag4.id)
default_dreamlike1 = DreamLike.create(dream_id: default_dream1.id, user_id: default_user1.id)
default_dreamlike2 = DreamLike.create(dream_id: default_dream1.id, user_id: default_user2.id)
default_dreamlike3 = DreamLike.create(dream_id: default_dream2.id, user_id: default_user3.id)
default_sale1 = Sale.create(dream_id: default_dream1.id, user_id: default_user1.id, amount: 5000.0, instalments: 1)
default_sale2 = Sale.create(dream_id: default_dream2.id, user_id: default_user2.id, amount: 17000.0, instalments: 2)