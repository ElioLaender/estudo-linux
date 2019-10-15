#!/bin/bash

converte_imagem(){
    cd ~/Downloads/imagens-livros # Acessa o diretório
    # Verifica se existe o diretório png, caso contrário cria o diretório Ps: O if no Shell é encerrado com 'fi'
    if [ ! -d png ] 
    then
        mkdir png
    fi

    for imagem in *.jpg
    do
        local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }') # Não pode existir espaço no '=' da atribuição | o 'local' seta a variável com scopo de bloco.  
        convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
    done
}

# No Shell, uma função só pode ser invocada após sua declaração. (Não possui hoisting como no JS)
converte_imagem
# Verifica se o status de retorno da função foi um sucesso
if [ $? -eq 0]
then
    echo "Conversão realizada com sucesso"
else 
    echo "Houve uma falha no processo"
fi

# Quando executamos um comando no Linux, ele emite um status de saída. Essa regra também é válida para chamada de método.
# Quando o comando é executado com sucesso, o status de saída é zero (0). 
# Já quando ocorre falhas, esse status de saída pode variar de 1 a 255