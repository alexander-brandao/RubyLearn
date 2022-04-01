#criei uma classe para uma rede de fraquias
#I created a class for a franchise network
class Franquia

    #inicializei um espaco de memoria "@restaurantes" como um array(vetor)
    #initialized a memory space as a Array
    def initialize
        @restaurantes = []
    end

    #metodo que adiciona restaurantes para a rede de franquias
    #method that add the franchises for the network
    def adiciona(restaurante)
        @restaurantes << restaurante
    end

    #metodo para visualizar listas de restaurantes
    #method to view franchise list
    def mostra
        for restaurante in @restaurantes
            puts restaurante.nome
        end
    end
end

#criando um atalho de leitura e escrita "nome"
#creating attribute accessor "nome"
class Restaurante
    attr_accessor :nome
end

restaurante_um = Restaurante.new
restaurante_um.nome = "giraffas"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Mequi"

franquia = Franquia.new 
    franquia.adiciona restaurante_um
    franquia.adiciona restaurante_dois

    franquia.mostra