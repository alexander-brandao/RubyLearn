def notas(nota)
    if nota > 7
        puts "nota boa"
    else 
        puts "nota ruim"
    end
end
# notas(8)

def sequence()
    for i in (1..7)
        x = i 
        puts x 
    end
end

# sequence()

def regex()
    puts /paulo/ =~ "sao paulo"
    #retorna a posicao do primeiro caractere encontrado
    # retorna 4 (a quinta posicao começando do 0)
end

#regex()
