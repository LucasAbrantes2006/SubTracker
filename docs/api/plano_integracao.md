# Plano de Integração Externa

Para cumprir o requisito de integração com uma API de terceiros, o SubTracker vai consumir a AwesomeAPI de cotações de moedas. O objetivo é pegar o valor das assinaturas internacionais cadastradas pelo usuário (em Dólar ou Euro) e converter automaticamente para Reais na hora de exibir a projeção financeira.

A integração será implementada no backend (no arquivo `views.py`). Quando o relatório for gerado, usaremos o pacote `requests` do Python para fazer um GET na URL pública: `https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL`. 

No JSON de resposta dessa API, vamos extrair o atributo `bid` (valor de compra) e multiplicá-lo pelo valor da assinatura armazenada no banco. 

Como dependemos de um serviço externo, faremos um tratamento de erros usando blocos `try...except`. Se a AwesomeAPI demorar a responder (timeout) ou cair, o sistema pegará o último valor de cotação que deixaremos salvo no nosso banco de dados, garantindo que o relatório seja gerado sem travar a aplicação.