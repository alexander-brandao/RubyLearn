require_relative 'lib/fabrica/carro'

novo_carro = Fabrica::Carro.new('Tesla','Model X')

novo_carro.acelera

puts 'Finalizando programa...'
