#!/bin/bash

# realizar verificação perguntando se realmente deseja executar o script
# verificar se tem como criar um gatilho para execução do script (Sugestão de melhoria)
# upload direto por conexão ssh, sem necessidade de gerenciador de FTP (Sugestão de melhoria)

#Passos
# 1 - Receber parâmetro o nome do .zip contendo o fonte do deploy 
# 2 - Acessar como root sudo su
# 3 - Verificar se existe pasta no diretório de backup do deploy com a data especificada no parâmetro
# 4 - Renomear arquivo .zip adicionado o hhora/min/ss ao final do arquivo ex: dist-mg-v20191012.zip para dist-mg-v20191012-h174232.zip  
# 5 - Caso não existir, cria a pasta com nome no padrão aaaammdd seguindo o parâmetro
# 6 - Copiar o zip informado no diretório 'home/ubuntu' com a dada especificada para a pasta de backup e deploy
# 7 - Deletar a pasta 'staticsite.old' em '../../opt/staticsite.old'
# 8 - Renomear a pasta 'staticsite' para 'staticsite.old'
# 9 - Criar pasta staticsite dentro de /opt
# 10 - Copiar o .zip com o fonte para pasta staticsite
# 11 - Extrair o zip dentro da pasta
# 12 - Apagar o zip após a extração
# 13 - Apagar o zip adicionado na pasta /home/ubuntu

