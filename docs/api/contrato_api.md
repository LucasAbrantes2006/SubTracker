# Contrato da API REST

A nossa API REST vai usar o Django REST Framework para separar o backend do frontend, retornando os dados sempre em formato JSON. Como exigido nos requisitos do projeto, fiz o mapeamento do CRUD completo

## 1. Rotas de Assinaturas

Vamos centralizar o gerenciamento na rota base `/api/assinaturas/`.

Para listar todas as assinaturas cadastradas, o frontend fará uma requisição com o método GET para `/api/assinaturas/`. A nossa view fará a busca no banco de dados e retornará o status HTTP 200 (OK).
Exemplo do JSON retornado:
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

Para cadastrar uma assinatura nova, a interface vai enviar os dados preenchidos no formulário usando o método POST para a mesma rota `/api/assinaturas/`. Se salvar corretamente no banco, o Django retorna o status 201 (Created). Se faltar alguma informação, retorna 400 (Bad Request)

Para consultar os detalhes de apenas uma assinatura específica, a requisição será um GET na rota `/api/assinaturas/{id_assinatura}/`, que vai devolver os dados daquele ID com status 200 (OK)

Para editar ou atualizar uma assinatura que já existe, o método usado será o PUT na rota `/api/assinaturas/{id_assinatura}/`. O sucesso retorna 200 (OK). Se o ID não for encontrado no banco de dados, retorna o erro 404 (Not Found)

Para apagar um registro, o método será o DELETE na rota `/api/assinaturas/{id_assinatura}/`. O status de sucesso para exclusão será o 204 (No Content)

## 2. Rota de Relatórios

Para alimentar o nosso painel financeiro, teremos a rota `/api/relatorios/projecao/`

Quando o frontend mandar um GET para essa rota, o backend vai fazer o cálculo ignorando as assinaturas inativas, converter a moeda e retornar o status 200 (OK) com o JSON contendo os totais:
{
  "total_ativas": 8,
  "gasto_mensal_brl": 450.90,
  "projecao_anual_brl": 5410.80
}