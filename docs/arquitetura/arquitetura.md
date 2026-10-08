# Arquitetura da Aplicação

O projeto vai seguir o padrão de arquitetura Cliente/Servidor e será construído usando a estrutura MVT (Model-View-Template) do framework Django.

A separação de responsabilidades funcionará da seguinte forma:

1. Model (Banco de Dados):
Para a persistência das informações, vamos utilizar o banco de dados relacional PostgreSQL configurado no arquivo `settings.py`. A estrutura das tabelas será definida no arquivo `models.py`, onde criaremos as classes (como Cliente, Categoria e Assinatura) utilizando os tipos do Django (como CharField e DecimalField). O ORM do Django ficará responsável por transformar isso em tabelas no banco.

2. View (Lógica e Controle):
Toda a regra de negócio ficará concentrada no arquivo `views.py`. As funções e classes definidas nesse arquivo vão receber as requisições HTTP mapeadas no `urls.py`, interagir com os Models para consultar ou salvar dados, consumir a API de moedas com o pacote `requests` e, por fim, retornar a resposta em JSON para a nossa API REST.

3. Template (Apresentação):
A interface do usuário será desenvolvida com HTML5, CSS3 e Bootstrap para facilitar o layout responsivo das colunas (Grid). O frontend fará o consumo dos dados gerados pelas views e APIs para preencher a tela de dashboard financeiro.