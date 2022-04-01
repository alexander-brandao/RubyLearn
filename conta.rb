class Conta 

    def tranfere(argumentos)
        destino = argumentos[:destino]
        data = argumentos[:data]
        valor = argumentos[:valor]

        puts "tranferido:R$ #{valor} para #{destino} na data #{data}"
    end
end

aluno = Conta.new

aluno.tranfere( {destino: "escola", data: Time.now, valor: 100.00})
