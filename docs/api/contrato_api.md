# Contrato da API REST

A nossa API REST será desenvolvida para retornar os dados do sistema em formato JSON, separando o processamento do backend da exibição no frontend. 

O recurso principal será acessado pela rota `/api/assinaturas/`. 
Quando o frontend fizer uma requisição com o método GET para essa rota, a nossa view fará uma consulta no banco de dados para buscar todas as assinaturas cadastradas pelo usuário e devolverá um JSON com o status HTTP 200 (OK). 

Exemplo do JSON de resposta:
[
  {
    "id_assinatura": 1,
    "nome_servico": "DigitalOcean",
    "valor": 15.00,
    "moeda": "USD",
    "ciclo_cobranca": "Mensal",
    "status": true
  }
]

Para inserir uma nova assinatura, a interface enviará um POST para essa mesma rota com os dados preenchidos no formulário, retornando um status 201 (Created) em caso de sucesso ou 400 (Bad Request) se faltar alguma informação.

Além disso, teremos um endpoint para alimentar o painel de relatórios em `/api/relatorios/projecao/`. Esse endpoint usará o método GET e retornará um JSON contendo as variáveis já calculadas no backend, como o gasto mensal em Reais e a projeção anual, ignorando assinaturas inativas.