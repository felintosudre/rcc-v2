# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'INÍCIO SEED'
puts '>>>>>>> Gerando equipes'
Team.create([{ name: 'Anjos da ordem'},
              { name: 'Apoio '},
              { name: 'Biroska'},
              { name: 'Dinamização'},
              { name: 'Limpeza'},
              { name: 'Sentinelas'},
              { name: 'Animação'},
              { name: 'Cozinha'},
              { name: 'Hospedagem'},
              { name: 'Recepção'},
              { name: 'Decoração  '},
              { name: 'Intercessão'},
              { name: 'Refeitório'}
              ])
puts '<<<<<<< Equipes Geradas'
