# Desafio de Testes Funcionais - WEB-UI
Testes de interface web na página W3Schools, utilizando Robot Framework.

O Robot Framework é uma ferramenta de código aberto, voltada para automação de testes e processos. Ela utiliza uma abordagem keyword-driven, sendo de fácil aprendizagem, manutenção e interpretação. 

Também haverá a utilização da biblioteca SeleniumLibrary, para que os testes interajam com a página web alvo de teste.

## Requisitos

A máquina poderá ter sistema operacional Linux ou Windows.

Deverão ser instaladas as seguintes ferramentas:

- Python 3
- Pip
- RobotFramework
- Navegador Mozzila Firefox
- Gecko Driver

## Instalação

### Python 3

##### Linux:
Para instalar o Python 3, digite no terminal:

    $ sudo apt-get install python3

##### Windows:
Para instalar o Python 3, acesse o link https://www.python.org/downloads/ e faça download da versão mais recente disponível.

Na primeira tela do assistente de instalação, não esqueça de marcar a opção "Add Python to PATH".

A instalação do Pip será realizada em conjunto.

Para cofirmar a instalação, abra o CMD e digite:

    python --version

### Pip

##### Linux:
Para instalar o Pip, o gerenciador de pacotes do Pyhton, digite no terminal:
	
	$ sudo apt-get install python3-pip

##### Windows:
O Pip já terá sido instalado juntamente com o Python.

Para confirmar a instalação, digite no CMD:
    
    pip --version

### RobotFramework

##### Linux e Windows:
Para instalar o RobotFramework:
	
	$ pip install robotframework
	
Para confirmar a instalação, feche e abra novamente o terminal, e digite o seguinte comando:

    $ robot --version

### Web Driver

Para instalar o Web Driver, acesse os link abaixo, e baixe a versão mais recente do webdriver:

- Geckodriver (Firefox WebDriver):
	
https://github.com/mozilla/geckodriver/releases

##### Linux:
Será necessário que os webdrivers estejam adicionados ao PATH do Sistema. Para isso, acesse a pasta Downloads via Terminal, e digite os seguintes comandos:

Extrair o arquivo:
	
	$ tar -xvzf geckodriver

Tornar o arquivo executável:
	
	$ chmod +x geckodriver

Mover os arquivos para o diretório /usr/local/bin:
	
	$ sudo mv -f geckodriver /usr/local/bin/geckodriver 

##### Windows:
Copie e cole o webdriver em algum diretório que esteja no PATH do sistema, recomenda-se que seja no diretório de Scripts do Python.

### Demais dependências
Instale as dependências necessárias:
    
    $ pip install -r requirements.txt

## Executando os testes

O Robot Framework possui a seguinte sintaxe:

Para executar todos os testes:
    
    $ robot diretorio/de/testes

Para definir os diretório onde os relatórios dos resultados serão armazenados, utilize o -d:

    $ robot -d ./diretorio/de/resultados diretorio/de/testes

OBS: Por boa prática, recomenda-se que o nome do diretório seja "results".

Para executar uma suíte de testes específicas:

    $ robot -d ./diretorio/de/resultados diretorio/de/testes/test_name.robot

Para executar um teste específico:

    $ robot -d ./diretorio/de/resultados -t "nome do teste" diretorio/de/testes/test_name.robot
    
## Execução Via Docker

É possivel executar os testes via Docker através do script contido em docker_run_tests.py, que cria uma imagem através do Dockerfile do projeto, executa o container e roda os testes.

Para isto, estando no diretório do projeto, digite o comando:

    $ python docker_run_tests.py
    
Observações:
- Necessário ter o Docker e Python instalados
- Os testes de interface web podem apresentar lentidão na execução via docker, provavelmente devido a limitação da memória RAM, conforme relatado nessa discussão: https://github.com/SeleniumHQ/docker-selenium/issues/135

## TODO

* Instruções para analisar os relatórios de resultado
* Considerações sobre a organização do projeto, e justificativa de determinadas escolhas
