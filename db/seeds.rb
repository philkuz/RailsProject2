# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Character.create(health: 20, hype: 5, armor: 0, damage: 2,
     speed: 1, is_enemy: true, base_health: 20, base_damage: 2,
     cash:5, name: "Monster 1", image:"cavemonster1.jpg")
Character.create(health: 30, hype: 15, armor: 0, damage: 3,
     speed: 2, is_enemy: true, base_health: 30, base_damage: 3,
     cash:5, name: "Monster 2", image:"cavemonster2.jpg")
Character.create(health: 40, hype: 25, armor: 0, damage: 4,
     speed: 2, is_enemy: true, base_health: 40, base_damage: 4,
     cash:5, name: "Monster 3", image:"cavemonster3.jpg")
Character.create(health: 50, hype: 35, armor: 0, damage: 5,
     speed: 3, is_enemy: true, base_health: 50, base_damage: 5,
     cash:5, name: "Monster 4", image:"cavemonster4.jpg")
Character.create(health: 100, hype: 45, armor: 0, damage: 8,
     speed: 4, is_enemy: true, base_health: 100, base_damage: 8,
     cash:5, name: "Monster 5", image:"cavemonster5.png")
