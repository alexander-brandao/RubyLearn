class Restaurante
    def qualifica(nota, msg="obrigado")
        print "A nota do restaurante foi #{nota}. #{msg}  \n" 
    end
end

restaurante = Restaurante.new
restaurante.qualifica('10')