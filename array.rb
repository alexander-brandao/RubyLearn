lista = Array.new 

lista << "alex"
lista << 12
lista << 1.1

outra_lista = Array.new

outra_lista = [1,2,"Alex", :simbolo, /$regexˆ/]
#puts outra_lista[0]

def compra(*produtos)
    puts produtos.size
    puts produtos[0]
end

compra("macbook","mustang GT", "Abadá")





