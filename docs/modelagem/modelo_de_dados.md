# Modelo de Dados — SubTracker

| Campo | Informação |
|---|---|
| Etapa | Etapa 3 — Modelagem lógica e de dados |
| Responsável | Guilherme |
| Status | Rascunho para revisão |
| Fonte do diagrama | [der.puml](diagramas/der.puml) |
| Fonte SQL | [subtracker_der.sql](diagramas/subtracker_der.sql) |

## Entidades e tabelas

### `categoria`

| Campo | Tipo | Chave | Regra |
|---|---|---|---|
| `id_categoria` | `INTEGER` | PK | Identificador único da categoria |
| `nome` | `VARCHAR(100)` |  | Nome da categoria |

### `assinatura`

| Campo | Tipo | Chave | Regra |
|---|---|---|---|
| `id_assinatura` | `INTEGER` | PK | Identificador único da assinatura |
| `nome_servico` | `VARCHAR(150)` |  | Nome do serviço ou fornecedor |
| `valor` | `DECIMAL(10,2)` |  | Valor recorrente informado pelo usuário |
| `moeda` | `CHAR(3)` |  | Código da moeda, por exemplo BRL, USD ou EUR |
| `ciclo_cobranca` | `VARCHAR(20)` |  | Periodicidade da cobrança |
| `status` | `BOOLEAN` |  | Indica se a assinatura está ativa |
| `data_renovacao` | `DATE` |  | Data da próxima renovação ou cobrança |
| `id_categoria` | `INTEGER` | FK | Referência a `categoria.id_categoria` |

## Relacionamento e cardinalidade

- Uma **categoria** pode possuir zero ou muitas assinaturas: `categoria 1:N assinatura`.
- Cada **assinatura** pertence a uma categoria: `assinatura N:1 categoria`.
- A chave estrangeira `assinatura.id_categoria` referencia `categoria.id_categoria`.

## Regras de integridade a validar

- `id_categoria` e `id_assinatura` devem ser únicos e não nulos.
- `valor` deve ser maior que zero e usar no máximo duas casas decimais.
- `moeda` deve aceitar somente códigos definidos pelo sistema, inicialmente `BRL`, `USD` e `EUR`.
- `ciclo_cobranca` deve usar valores controlados, como mensal, trimestral, semestral ou anual.
- `data_renovacao` deve ser uma data válida.
- O relatório deve preservar o valor e a moeda originais; a conversão para BRL é uma estimativa derivada.
- O comportamento de exclusão de categorias com assinaturas vinculadas deve ser definido antes da implementação. Recomenda-se impedir a exclusão enquanto houver dependências ou utilizar desativação lógica.
