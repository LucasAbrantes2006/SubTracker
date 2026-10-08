# Planejamento do Projeto — SubTracker

| Campo | Valor |
|---|---|
| Projeto | SubTracker — Gestor de Assinaturas e Recorrências |
| Etapa | 2 — Visão e Planejamento |

## 1. Objetivo e abordagem

Este planejamento organiza as entregas do SubTracker em duas fases. O trabalho será acompanhado por backlog, marcos e revisão da equipe. O escopo inicial é uma aplicação web para cadastro e acompanhamento de assinaturas, projeções de despesas e conversão informativa de USD/EUR para BRL usando a AwesomeAPI.

### Fase 1 — Documentação e modelagem

**Objetivo:** aprovar a visão, os fluxos, os modelos e a especificação técnica antes de iniciar o desenvolvimento.

**Entregas:** documento de visão e planejamento; protótipos; requisitos de identidade e infraestrutura; casos de uso e DER; arquitetura e contrato REST; especificação da integração cambial; critérios de aceite e backlog priorizado.

**Restrição:** não implementar código de backend nesta fase.

**Gate de saída:** artefatos revisados, decisões pendentes registradas, riscos prioritários atribuídos e backlog da Fase 2 aprovado pela equipe.

### Fase 2 — Desenvolvimento, hospedagem e testes

**Objetivo:** implementar e demonstrar os fluxos aprovados usando Python, Django, Django REST Framework e PostgreSQL.

**Entregas:** aplicação integrada; CRUD e busca/filtros; painel e projeções; integração AwesomeAPI com tratamento de falhas; testes; hospedagem acordada; resultados de SAST/DAST e documentação atualizada.

**Sequência sugerida:** preparar ambiente e banco; implementar identidade e persistência; desenvolver API e interface; integrar relatórios e câmbio; executar testes funcionais e de segurança; corrigir defeitos prioritários; publicar e demonstrar.

### Forma de trabalho

- Manter um backlog único com prioridade, responsável, estado, estimativa e critério de aceite.
- Usar tarefas pequenas, branches por alteração e Pull Requests revisados por outra pessoa.
- Fazer uma sincronização semanal para revisar progresso, bloqueios, riscos e próximas entregas.
- Registrar decisões que alterem escopo, dados, segurança, API ou cálculos em `docs/decisoes/`.
- Datas e estimativas serão incluídas após confirmação do cronograma acadêmico.

## 2. Divisão de responsabilidades — quatro frentes

A equipe deverá atribuir posteriormente uma pessoa responsável por cada frente. A atribuição não impede colaboração ou revisão cruzada. A matriz abaixo distribui o trabalho por área, sem designar integrantes nominalmente.

| Frente | Responsabilidade principal | Entregáveis-chave |
|---|---|---|
| **1. Produto, requisitos e coordenação** | Visão, escopo, critérios de aceite, protótipos, backlog, marcos, acompanhamento e documentação consolidada | Documento de visão, protótipos, backlog, critérios de aceite e registros de decisão |
| **2. Identidade, infraestrutura e segurança** | Requisitos de acesso, ambientes, configuração, banco/implantação em conjunto com a equipe, gestão segura de segredos e verificações SAST/DAST | Especificação de identidade/infraestrutura, ambiente reprodutível, publicação e evidências de segurança |
| **3. Domínio, dados e qualidade funcional** | Casos de uso, regras de negócio, modelo de dados, DER, validações, projeções e testes funcionais correspondentes | Casos de uso, DER/modelo lógico, regras de cálculo e testes de domínio |
| **4. Arquitetura, API e integrações** | Componentes, contrato REST, implementação da API, integração com AwesomeAPI, tratamento de erros e testes de integração | Arquitetura, contrato da API, integração cambial e testes de API/integração |

### 2.1 RACI por entrega

**R** executa; **A** responde pela aprovação; **C** é consultado; **I** é informado. Os identificadores 1–4 correspondem às frentes acima; a equipe atribuirá uma pessoa a cada frente. Para cada item deve haver um responsável final identificável no backlog.

| Entrega | Frente 1 | Frente 2 | Frente 3 | Frente 4 |
|---|:---:|:---:|:---:|:---:|
| Visão, escopo, critérios de aceite e protótipos | A/R | C | C | C |
| Identidade, infraestrutura e segurança | C | A/R | C | C |
| Casos de uso, modelo de dados e regras de domínio | C | C | A/R | C |
| Arquitetura, contrato REST e AwesomeAPI | C | C | C | A/R |
| Baseline da Fase 1 e priorização | A | C | C | C |
| Testes funcionais e validação dos fluxos | A | C | R | C |
| Testes de segurança e revisão de implantação | I | A/R | C | C |
| Integração ponta a ponta e entrega final | A | R | R | R |

## 3. Backlog inicial

Prioridade: **P0** = necessária para o gate/escopo principal; **P1** = importante, após o fluxo principal; **P2** = melhoria condicionada à capacidade. Os itens devem ser detalhados em tarefas menores no repositório.

### 3.1 Fase 1 — Documentação e modelagem (sem backend)

| ID | Frente | Tarefa | Prioridade | Critério de conclusão |
|---|---|---|:---:|---|
| F1-01 | 1 | Consolidar problema, público, objetivos, escopo e exclusões | P0 | Documento de visão revisado pela equipe |
| F1-02 | 1 | Produzir protótipos dos fluxos essenciais e validar navegação/conteúdo | P0 | Telas de painel, listagem, cadastro/edição e relatório disponíveis para revisão |
| F1-03 | 1 | Definir critérios de aceite, prioridades e backlog da Fase 2 | P0 | Itens rastreáveis aos objetivos e com critérios verificáveis |
| F1-04 | 1 | Organizar marcos, cadência e registro de decisões | P1 | Planejamento acordado; datas podem permanecer pendentes até confirmação |
| F1-05 | 2 | Documentar identidade, acesso, ambientes, configuração e requisitos de hospedagem | P0 | Requisitos e decisões em aberto registrados |
| F1-06 | 2 | Identificar riscos de segurança/infraestrutura e controles mínimos | P1 | Riscos com mitigação e responsável de frente |
| F1-07 | 3 | Definir casos de uso, entidades, atributos e regras de integridade | P0 | Artefatos coerentes com escopo e protótipos |
| F1-08 | 3 | Elaborar DER/modelo lógico e regras conceituais de projeção | P0 | Relacionamentos e premissas revisados |
| F1-09 | 3 | Definir cenários funcionais e exemplos de cálculo para validação | P1 | Casos comuns, limites e exceções documentados |
| F1-10 | 4 | Definir componentes, recursos, operações e erros da API REST | P0 | Contrato cobre os fluxos priorizados |
| F1-11 | 4 | Validar documentação atual da AwesomeAPI e especificar contingência | P0 | Moedas, resposta esperada, timeout, falha e referência temporal descritos |
| F1-12 | Todas | Revisar consistência entre visão, protótipos, dados e arquitetura | P0 | Inconsistências resolvidas ou registradas como pendência aceita |

### 3.2 Fase 2 — Desenvolvimento, hospedagem e testes

| ID | Frente | Tarefa | Prioridade | Critério de conclusão |
|---|---|---|:---:|---|
| F2-01 | 2 | Preparar configuração local/de teste, PostgreSQL e ambiente de hospedagem | P0 | Instruções reproduzíveis e conexão validada |
| F2-02 | 2 | Implementar identidade e controles de acesso aprovados | P0 | Acesso autorizado e isolamento de dados testados |
| F2-03 | 3 | Implementar modelos, migrações e validações de domínio | P0 | Persistência e regras aprovadas cobertas por testes |
| F2-04 | 4 | Implementar API REST e documentação correspondente | P0 | Operações essenciais funcionais e consistentes com o contrato |
| F2-05 | 1 | Implementar interface conforme protótipos aprovados | P0 | Fluxos prioritários acessíveis e utilizáveis |
| F2-06 | 3/4 | Implementar busca, filtros, projeções e relatórios | P0 | Resultados e cálculos validados com casos definidos |
| F2-07 | 4 | Integrar AwesomeAPI com timeout, validação e contingência | P0 | Cotação identificada por referência temporal; falhas não geram valor enganoso |
| F2-08 | 1/3 | Executar testes de aceitação, regressão e revisão de usabilidade | P0 | Critérios de aceite principais aprovados ou defeitos registrados |
| F2-09 | 2/4 | Executar SAST/DAST, triar achados e corrigir vulnerabilidades prioritárias | P0 | Evidências e decisões sobre risco residual registradas |
| F2-10 | Todas | Publicar a aplicação, revisar documentação e preparar demonstração | P0 | Sistema demonstrável no ambiente acordado e entrega final organizada |

## 4. Marcos e entregáveis

As datas serão definidas pela equipe após confirmação dos prazos acadêmicos. Cada marco termina com revisão e registro de pendências.

| Marco | Fase | Entregável / condição de saída |
|---|---|---|
| M1 — Visão aprovada | 1 | Documento de visão, escopo e critérios revisados |
| M2 — Protótipos validados | 1 | Fluxos essenciais revisados e ajustes prioritários registrados |
| M3 — Modelagem concluída | 1 | Casos de uso, regras e DER consistentes com a visão |
| M4 — Arquitetura especificada | 1 | Componentes, contrato REST e integração definidos |
| M5 — Pronto para desenvolvimento | 1 | Baseline aprovada, riscos prioritários tratados e backlog ordenado |
| M6 — Base técnica pronta | 2 | Ambiente, banco, identidade e persistência operacionais |
| M7 — Fluxo principal integrado | 2 | CRUD, busca e interface funcionando de ponta a ponta |
| M8 — Relatórios e câmbio | 2 | Projeções e conversão testadas, com tratamento de falhas externas |
| M9 — Qualidade e publicação | 2 | Testes e SAST/DAST executados, achados triados, aplicação hospedada |
| M10 — Entrega final | 2 | Demonstração, documentação atualizada e limitações conhecidas registradas |

## 5. Gestão de riscos

A equipe manterá um registro curto de riscos e o revisará semanalmente e em cada marco. Cada risco ativo deve ter probabilidade, impacto, indicador de alerta, resposta, responsável de frente e estado. Atribuições pessoais serão incluídas depois que a equipe distribuir as quatro frentes.

| Risco | Resposta planejada |
|---|---|
| AwesomeAPI indisponível ou com resposta alterada | Isolar a integração, configurar timeout e validação, testar falhas e indicar claramente quando não houver cotação atual confiável. Cache, se adotado, deverá ter prazo de validade explícito. |
| Atraso ou bloqueio em tarefa crítica | Dividir entregas, sinalizar bloqueios na sincronização semanal, redistribuir trabalho entre frentes e priorizar o fluxo mínimo demonstrável. |
| Divergência entre requisitos, dados e API | Fazer revisão cruzada nos marcos M3/M4 e registrar uma decisão de referência antes de implementar mudanças incompatíveis. |
| Erro em projeções ou conversão | Documentar premissas e exemplos de cálculo; cobrir periodicidades, datas e arredondamento com testes. |
| Exposição de dados ou credenciais | Não versionar segredos, testar autorização e isolamento de dados, executar SAST/DAST e corrigir achados prioritários antes da demonstração. |
| Crescimento de escopo | Avaliar impacto em prazo e risco; priorizar itens P0 e adiar melhorias P1/P2 mediante decisão registrada. |
| Falha de ambiente ou hospedagem | Testar a implantação antes do marco final, documentar configuração e manter plano alternativo compatível com os recursos disponíveis. |

**Escalonamento:** risco de segurança, privacidade ou atraso de marco deve ser comunicado assim que identificado. Mudanças de escopo ou aceitação de risco residual exigem decisão registrada pela equipe.

## 6. Critérios de conclusão do projeto

- Fluxos prioritários de cadastro, consulta, edição e desativação/remoção de assinatura demonstráveis.
- Busca/filtros e projeções testados conforme regras documentadas.
- Conversão cambial apresentada com referência temporal e tratamento explícito de indisponibilidade.
- API e dados coerentes com o contrato e o modelo aprovados.
- Testes funcionais e verificações SAST/DAST executados, com achados prioritários tratados ou decisão registrada.
- Aplicação hospedada no ambiente acordado; documentação e limitações conhecidas atualizadas.
