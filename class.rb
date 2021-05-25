#classe Pai
class Automovel
    def acelera
        # Aciona injeção eletronica
        # injeta combustivel e etc..
        puts "acelerando o automovel..."
    end
end

#classe filho

class Carro < Automovel 
    def acelera
        # verifica freios e outras coisas
        # que o carro especificamente necessita
        puts "Verificando equipamentos"
        super 
    end
end
