# Java-Expresso
## Script com o objetivo de automatizar a instalação e configuração do ambiente de desenvolvimento Java no Ubuntu (20.04)

### Para ser executado corretamente, garanta que o arquivo possua as permissões necessárias.

## Passo a passo recomendado:

- sudo git clone https://github.com/JPBaraunaDEV/Java-Expresso.git
- cd Java-Expresso/
- sudo mv java_expresso.sh ~
- cd
- sudo chmod 777 java_expresso.sh

### Depois basta rodar o comando

- ./java_expresso.sh 

### e aguardar a mensagem "Instalações Concluídas !" ser exibida.

## Para verificar a versão dos wrappers instalados:

- ./mvnw -v
- ./gradlew -v
