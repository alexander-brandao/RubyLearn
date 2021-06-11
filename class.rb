#classe Pai
class Automovel
    
    #self permite a criancao de -metodos de classe- em ruby
    def self.tipo_cambio
        puts "Manual"
    
    end
    
    # acelera é -metodo de instancia- 
    def acelera
        # Aciona injeção eletronica
        # injeta combustivel e etc..
        puts "acelerando o automovel..."
        verifica_combustivel 
    end

    #metodos privados
    private 
        def verifica_combustivel
            puts "verificando combustivel"
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

