class Pessoa
    def muda_nome(novo_nome)
        @nome = novo_nome
    end

    def diz_nome
        puts "meu nome é #{@nome}"
    end
end

pessoa = Pessoa.new
pessoa.muda_nome "Joao"
pessoa.diz_nome
