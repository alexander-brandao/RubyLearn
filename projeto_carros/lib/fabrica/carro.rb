module Fabrica
    class Carro

        attr_accessor :marca, :modelo

        def initialize(marca, modelo)
            @marca = marca
            @modelo = modelo
        end

        def acelera
            puts "Acelerando..."
        end
    end
end