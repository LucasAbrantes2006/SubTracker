# Casos de Uso — SubTracker

| Campo | Informação |
|---|---|
| Etapa | Etapa 3 — Modelagem lógica e de dados |
| Responsável | Guilherme |
| Status | Rascunho para revisão |
| Fonte do diagrama | [casos_de_uso.puml](diagramas/casos_de_uso.puml) |

## Atores

- **Usuário:** cadastra, consulta, altera, desativa e pesquisa assinaturas; também solicita relatórios.
- **API de Câmbio:** fornece a cotação necessária para conversão de valores em relatórios financeiros.

## UC01 — Gerenciar Assinaturas

**Objetivo:** manter os registros de assinaturas e despesas recorrentes.

**Fluxo principal:** o usuário inicia o gerenciamento, escolhe criar, consultar, editar ou desativar um registro, informa ou altera os dados da assinatura, e o sistema valida e persiste a operação.

**Dados envolvidos:** serviço, valor, moeda, ciclo de cobrança, status, data de renovação e categoria.

**Fluxos alternativos e exceções:**

- Se houver campo obrigatório ausente ou formato inválido, o sistema rejeita a operação e informa os campos a corrigir.
- Se a categoria informada não existir, o sistema solicita uma categoria válida.
- Na desativação, o sistema altera o status conforme a regra aprovada, preservando o registro para manter consistência histórica.

## UC02 — Pesquisar Assinaturas

**Objetivo:** localizar assinaturas cadastradas.

**Fluxo principal:** o usuário informa texto ou filtros, o sistema consulta os registros compatíveis e exibe os resultados com nome, categoria, valor, moeda, status, ciclo e data de renovação.

**Fluxos alternativos e exceções:**

- Se nenhum registro atender aos filtros, o sistema exibe uma lista vazia sem indicar que houve falha.
- Se nenhum filtro for informado, o sistema apresenta a listagem padrão definida pela interface ou API.

## UC03 — Gerar Relatório Financeiro

**Objetivo:** apresentar uma visão consolidada das despesas recorrentes e das próximas cobranças.

**Fluxo principal:** o usuário solicita o relatório, o sistema seleciona os registros aplicáveis, calcula as projeções conforme seus ciclos de cobrança e apresenta totais, próximas renovações e agrupamentos por categoria e moeda.

**Relações:** inclui o UC04 quando houver valores em moeda estrangeira que precisem ser convertidos para BRL.

**Fluxos alternativos e exceções:**

- Se não houver assinaturas ativas, o sistema apresenta o estado vazio e não calcula totais inexistentes.
- Se a cotação não estiver disponível ou for inválida, o sistema mantém o valor original e sinaliza que a consolidação cambial não foi realizada.

## UC04 — Converter Valores Monetários

**Objetivo:** converter valores em USD ou EUR para BRL usando a API de Câmbio.

**Fluxo principal:** o sistema identifica as moedas necessárias, consulta a API de Câmbio, valida a taxa e o horário da cotação, converte os valores e informa a referência utilizada no relatório.

**Fluxos alternativos e exceções:**

- Em caso de timeout, indisponibilidade ou resposta inválida, o sistema não apresenta uma taxa como atual sem sinalização.
- A conversão é apresentada como estimativa e não representa necessariamente o valor efetivamente cobrado pelo fornecedor ou instituição financeira.
