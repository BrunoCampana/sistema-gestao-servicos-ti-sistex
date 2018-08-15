# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Criando nossos Users --- OBS: Depois que adicionarmos o devise precisamos incluir o email e senha dos users
a = Cidade.create!([{nome: 'Manaus'}])

b = Cliente.create!([{nome: '4 CTA', cidade: a.first}])

Usuario.create!(nome: 'Campana', status: 1, tipo: 3, email: 'campana@4cta.eb.mil.br', password: 'troqueestasenha', cliente: b.first)

#Usuario.create! nome: 'Ten Keller', email: 'keller@4cta.eb.mil.br',
#status: :ativo, tipo: :Nivel1, password: 'troqueestasenha'
