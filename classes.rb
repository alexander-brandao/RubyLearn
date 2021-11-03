class Restaurante
    def qualifica(nota, msg="obrigado")
        print "A nota do restaurante foi #{nota}. #{msg}  \n" 
    end
end

#restaurante = Restaurante.new
#restaurante.qualifica('10')

class Pessoa

    def initialize
        puts "criando uma nova pessoa"
    end

    def muda_nome(novo_nome)
        @nome = novo_nome
    end

    def diz_nome
       puts "meu nome é #{@nome}"
    end
end

#p = Pessoa.new
#p.muda_nome("Alexander")
#p.diz_nome

class Carro
    def nome
       @nome 
    end 

    def nome=(novo_nome)
        @nome = novo_nome
    end
end

#c = Carro.new
#c.nome=("Alexander")
#puts c.nome

