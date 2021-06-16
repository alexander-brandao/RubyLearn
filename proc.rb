# require inclui outros arquivos ou bibliotecas no programa
require 'net/http'
require 'json'

# metodo ou funcao que faz uma chamda HTTP para baixar arquivos JSON da internet
def listar_usuarios(quantidade, my_proc)
    #faz a chamada do site
    uri = URI('http://jsonplaceholder.typecode.com/users')
    #joga os dados na variavel 'response'
    response = Net::HTTP.get(uri)
    #converte os arquivos baixados para formato JSON
    JSON.parse(response)
    # metodo que chama a proc, passando como parametro a quantidade de dados baixados
    my_proc.call(quantidade)
    #passando o JSON em formato de hash
    yield JSON.parse(response) if block_given?
    puts "finalizando listagem de usuarios"
end

#instanciando um objetodo do tipo proc
debug = Proc.new {|variavel| puts "Debugando Variavel #{variavel}" }

#testando a funcao
listar_usuarios 10, debug do |usuarios|
    puts "Total de usuarios: #{response.size}"
end

