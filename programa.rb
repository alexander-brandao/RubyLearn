#comentatios em pyhton 
name_complete = "Alexander Costa"

#funcao puts printa a variavel 
puts name_complete

# nil deixa a variavel nula
name_complete = nil

puts name_complete.nil?

#escopo externo
preco = 50

# def cria uma funcao
def muda_preco
    #escopo interno da funcao
    preco = 100
    puts preco

end # end termina a funcao

muda_preco

puts preco

#criando classe em ruby
class Carro

    #metodos
    def velocidade_maxima
        250
    end

    def adiciona_marca(marca)
        @marca = marca
    end

    def marca
        @marca
    end

end #fim da classe

#instanciando uma classe
carro = Carro.new
puts carro.velocidade_maxima
carro.adiciona_marca("Ford")
puts carro.marca

