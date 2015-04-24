# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Exhibit.create!(cidade: 'Rio de Contas',
                datainicio: '26/12/2013',
                datafim: '30/12/2013',
                local: 'Foro da Cidade')

Exhibit.create!(cidade: 'Morro do Chapéu',
                datainicio: '4/04/2015',
                datafim: '13/04/2015',
                local: 'Centro cultural Minerva')


exhibits = Exhibit.all
25.times do
  nome = 'Objeto de teste'
  descripcao = Faker::Lorem.sentence(1)
  pessoa = Faker::Name.name
  idade = Random.rand(10...80)
  exhibits.each { |ex| ex.gabinete_objects.create!(nome: nome,
                                                  descripcao: descripcao,
                                                  pessoa: pessoa,
                                                  idade: idade) }
end

exhibits.each { |ex|
  objs = ex.gabinete_objects
  objs.each { |ob|
    ob.histories.create!(frase: Faker::Lorem.sentence(1),
                         memoria: Faker::Lorem.sentence( Random.rand(5...10) ) ) }
}


