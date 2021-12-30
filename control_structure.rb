#switch 

def procura_sede_copa_mundo(ano)
    case ano
        when 1895..2005
            "não lembro"
        when 2006
            "aleamnha"
        when 2010
            "africa do sul"
        when 2014
            "brasil"
        when 2018
            "russia"
        when 2022
            "Qatar"
        else
            "indefinido"
    end
end 


puts procura_sede_copa_mundo(2009)
