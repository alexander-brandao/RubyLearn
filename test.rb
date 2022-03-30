=begin 
lista = Array.new
lista << "Alexander, "
lista << "Vai superar "
lista << "As dificuldades "
lista << "vencer o pecado "
lista << "e Reinar com o senhor "

puts lista
=end

=begin
lista = [1,2, "string", :simbolo, /$regex^/]
puts lista
=end

def compra(*produtos)
    puts produtos.size
end

compra("panetone", "cueca", "carro")

