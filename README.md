# Teste para Arca Solutions

Automação de um cadastro de usuário feito utilizando RobotFramework para o processo seletivo da empresa Arca Solutions.

### Pré-requisitos

Como o RobotFramework utiliza Python é necessário que o mesmo esteja instalado na máquina e seu PATH configurado corretamente. https://www.python.org/downloads/

Para instalar os módulos utilizamos o pip:
```
python -m pip install -U pip

```

Após instalar o pip devemos instalar os modulos que estão localizados no arquivo "requirements.txt", podemos utlizar o próprio arquivo para realizar a instalação desta forma:

```
pip install -r requirements.txt

```
Caso utilize Linux será necessário baixar o chromedriver e instalá-lo no PATH, no caso do windows apenas o arquivo na pasta do projeto basta.
https://chromedriver.chromium.org/downloads

## Rodando os testes

Para rodar os testes basta executar o seguinte comando na raiz do projeto:

```
robot -d log/ Testes.robot
```
Onde "robot" é o comando que chama o framework, "-d log/" estamos setando onde os arquivos de log serão salvos e "Testes.robot" é o nome do arquivos que contém os testes.

## Observação

A página utlizada para o teste encontra-se com um CAPTCHA, diferentemente da foto mostrada no documento.
Com isso não é possível automatizar completamente a página, para contornar o problema deixei um delay de 10 segundos após preencher os campos para que se insira os dados do CAPTCHA automaticamente, é só preencher e aguarda a automação voltar a executar para que o teste termine.

## Consultando os logs

O log pode ser consultado na pasta referenciada anteriormente, abrindo o arquivo log.html

## Feito utilizando

* [RobotFramework](https://robotframework.org/) - O framework de automação usado
* [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/) - Biblioteca que faz a comunicação com o selenium



## Autor

* **Victor de Aro Navega** - [vinavega](https://github.com/vinavega)
