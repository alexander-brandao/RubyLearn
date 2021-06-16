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

# metodos terminados em "?" sao booleanos
# while freio_acionado?
#    puts "manter parado"
# end

# primeira forma como fazer um loop como metodo ".each"
# criando um vetor
# "fruta" e a variavel que recebe "laranja","maçã","uva"
["laranja","maçã","uva"].each do |fruta|
    puts fruta
end

#segunda forma
["laranja","maçã","uva"].each {|fruta| puts fruta}

#como imprimir do 0 até o 100 com a funcao ".upto"
0.upto(10) {|i| puts i}

#convertendo uma string em um array
lista = %w(conversao de string para array)

#criando uma tabela hash com chave e valor
hash = {nome: 'Alexander', idade: '25'}

# '*' transforma os parametros da funcao em arrays exemplo:
 def imprimir_nomes(*nomes)
    nomes.each {|n| puts n }
 end
#executando a funcao
 imprimir_nomes 'bruno','paulinho'




