 #baixa a biblioteca csv
 require 'csv'
 require 'pdf-reader'

    reader = PDF::Reader.new("PF-ITENS-RELACIONADOS-À-OPTICALIZAÇÃO-DE-SITES-E-AMPLIAÇÃO-DO-BACKBONE-NACIONAL-ÂMBITO-TAC_PORT-1715_BSE-DE-07.12.2017.pdf")
    
    reader.pages.each do |page|
        puts page.text
      end
    # manda o arquivo csv para uma variavel 'arq'
    arq = "plugins/apoio_fiscaliza1/files/reclassificacao_das_solicitacoes.csv"
    projeto = Project.find_by(name:"FISF")
    vigente = KbCategory.new(title:"Vigente", description: "Documentos vigentes.")
    vigente.project = projeto
    vigente.save
    revogado = KbCategory.new(title:"Revogado", description: "Documentos revogados.")
    revogado.project = projeto
    revogado.save
    # TIPO    Nº    NOME    VIGÊNCIA    SITUAÇÃO    PREVISÃO
    arq = "/vagrant/normativos_junho_2020.csv"
    CSV.foreach(arq, headers: false, encoding:'UTF-8' ) do |row|
        
        cat= vigente
        cat= revogado if row[4] == "REVOGADO"
        tag = ActsAsTaggableOn::Tag.find_by(name: row[0])
        if tag.nil?
            tag = ActsAsTaggableOn::Tag.create(name: row[0])
        end
        ano = row[0].split("/")[2]
        tag2 = ActsAsTaggableOn::Tag.find_by(name: ano)
        if tag2.nil?
            tag2 = ActsAsTaggableOn::Tag.create(name: ano)
        end
        artigo = KbArticle.new(title: row[0] << " teste", summary: " ", content: row[2])
        artigo.project = projeto
        artigo.category = cat
        artigo.author_id = 1
        artigo.version_comments = "Migração a partir de planilha."
        artigo.tags << tag unless tag.nil?
        artigo.tags << tag2 unless tag2.nil?
        throw artigo.validate! unless artigo.validate!
        artigo.save
    end 
     