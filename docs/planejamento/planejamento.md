# Planejamento do Projeto — SubTracker

| Campo | Informação |
|---|---|
| Projeto | SubTracker — Gestor de Assinaturas e Recorrências |
| Etapa | Etapa 2 — Visão e Planejamento |
| Versão | 1.0 |
| Responsável pela consolidação | Daniel |
| Equipe | Lucas, Daniel, Guilherme e Eduardo |
| Status | Proposta para revisão e validação da equipe |
| Base de planejamento | Fases e responsabilidades informadas pela equipe; datas e capacidade ainda a confirmar |

## 1. Estratégia de Execução

A execução será organizada em duas fases sequenciais, com marcos de validação e rastreabilidade entre requisitos, modelos, implementação e testes. A equipe deverá manter os documentos atualizados no repositório GitHub do grupo e registrar decisões relevantes em histórico versionado ou atas curtas.

### 1.1 Fase 1 — Documentação, visão e modelagem

**Objetivo:** reduzir incertezas sobre problema, público, escopo, identidade, dados, casos de uso, arquitetura e contrato antes da implementação.

**Restrição principal:** nesta fase não será desenvolvido código de backend. As entregas são documentos, diagramas, protótipos e planejamento. Caso um artefato contenha pseudocódigo ou exemplos de payload, estes devem ser identificados como especificação, não como implementação.

**Atividades e resultados esperados:**

- consolidar contexto, problema, objetivos, escopo, premissas, riscos e critérios de sucesso;
- definir personas/necessidades e fluxos prioritários;
- produzir protótipos navegáveis ou wireframes das telas essenciais;
- documentar identidade, infraestrutura e premissas de ambiente;
- modelar entidades, relacionamentos, regras de integridade e casos de uso;
- definir arquitetura lógica, componentes, API REST e integração com a AwesomeAPI;
- revisar consistência entre os artefatos e aprovar baseline de requisitos;
- elaborar critérios de aceite, plano de testes e backlog da Fase 2.

**Critério de passagem para a Fase 2:** visão e escopo revisados; protótipos e fluxos principais aceitos; modelo lógico e casos de uso revisados; arquitetura/contrato da API suficientemente definidos para iniciar implementação; dependências e riscos prioritários com responsáveis; backlog priorizado e ambiente/estratégia de hospedagem acordados.

### 1.2 Fase 2 — Desenvolvimento, hospedagem e verificação

**Objetivo:** implementar, testar, integrar e disponibilizar a aplicação dentro do escopo aprovado.

**Fluxo de trabalho recomendado:**

1. Preparar repositório, ambientes, configuração, banco PostgreSQL e estratégia de execução.
2. Implementar identidade e controles de acesso aprovados.
3. Implementar modelo de dados, regras de negócio e API com Django e Django REST Framework.
4. Implementar interface e fluxos associados aos protótipos aprovados.
5. Implementar integração cambial com a AwesomeAPI, incluindo timeout, validação, tratamento de falhas e indicação da referência da cotação.
6. Integrar dashboard/relatórios, busca/filtros e cálculos de projeção.
7. Executar testes unitários, integração, API, aceitação e regressão; corrigir defeitos prioritários.
8. Hospedar/publicar no ambiente definido, validar configuração e executar SAST/DAST.
9. Triar achados de segurança, corrigir vulnerabilidades relevantes e registrar limitações, evidências e decisões.
10. Realizar demonstração, revisão final da documentação e entrega acadêmica.

As tarefas deverão ser executadas em incrementos curtos, com integração frequente em uma branch principal protegida por revisão de código. A equipe deve evitar que componentes permaneçam isolados até o fim da fase.

### 1.3 Priorização e fluxo de mudanças

- Priorizar primeiro os fluxos essenciais: identidade/acesso necessário, CRUD de assinatura, persistência, busca/filtros, projeções, conversão e tratamento de falha da API externa.
- Tratar refinamentos visuais, funcionalidades não essenciais e notificações não previstas como itens posteriores, sujeitos a capacidade e aprovação.
- Mudanças de escopo devem registrar: solicitação, justificativa, impacto em prazo/risco/arquitetura, decisão e responsável.
- Nenhuma funcionalidade fora do escopo acordado — especialmente pagamentos reais, gateway de cartão ou SMS — deve ser adicionada sem revisão explícita do grupo e dos critérios acadêmicos.

### 1.4 Cadência e comunicação

Na ausência de calendário informado, recomenda-se:

- sincronização semanal curta para revisar entregas, próximos passos, riscos e bloqueios;
- atualização assíncrona do status sempre que um artefato ou tarefa mudar de estado;
- revisão cruzada entre responsáveis por artefatos dependentes;
- registro de decisões com data, participantes, decisão e impacto;
- demonstração ao final de cada marco, mesmo quando a entrega for documental.

A frequência poderá ser adaptada ao calendário acadêmico, mas deve ser acordada antes da execução.

## 2. Matriz de Responsabilidades (RACI)

**Legenda:** **R** = executa o trabalho; **A** = responde pelo resultado e aprova; **C** = consultado antes ou durante; **I** = informado. Deve haver um único **A** por entrega sempre que possível. O papel de responsável não elimina a colaboração dos demais integrantes.

| Entrega / atividade | Lucas | Daniel | Guilherme | Eduardo |
|---|:---:|:---:|:---:|:---:|
| Visão do produto, problema, objetivos e escopo | C | **A/R** | C | C |
| Planejamento, priorização, backlog e gestão de riscos | C | **A/R** | C | C |
| Protótipos e fluxos de interface | C | **A/R** | C | C |
| Infraestrutura e identidade — requisitos e documentação da Fase 1 | **A/R** | C | C | C |
| Modelo lógico, dados e DER | C | C | **A/R** | C |
| Casos de uso e regras associadas aos dados | C | C | **A/R** | C |
| Arquitetura de componentes | C | C | C | **A/R** |
| Contrato da API REST | C | C | C | **A/R** |
| Especificação da integração AwesomeAPI | C | C | C | **A/R** |
| Revisão cruzada e aprovação da baseline da Fase 1 | R | **A** | R | R |
| Configuração de repositório/ambiente/hospedagem na Fase 2 | **A/R** | I | C | C |
| Implementação de identidade e controles de acesso | **A/R** | C | C | R |
| Implementação de modelos e migrações de dados | C | I | **A/R** | C |
| Implementação de API e regras de negócio | C | I | C | **A/R** |
| Implementação de interface e apresentação dos protótipos | C | **A/R** | C | C |
| Implementação de integração cambial e tratamento de falha | C | C | C | **A/R** |
| Testes de infraestrutura, configuração e segurança | **A/R** | I | C | R |
| Testes funcionais, usabilidade e validação de critérios | C | **A/R** | R | R |
| Integração final, documentação e demonstração | R | **A** | R | R |

Se a composição real das tarefas mudar, atualizar a matriz no repositório. Em caso de conflito entre o papel de execução e o de aprovação, a equipe deve definir um aprovador substituto e registrar a decisão.

## 3. Backlog Completo de Tarefas

Os itens abaixo constituem uma baseline inicial organizada por fase e responsável. A prioridade sugerida é **P0** (necessária para passagem/entrega), **P1** (importante para completar o escopo) ou **P2** (melhoria desejável, condicionada à capacidade). As estimativas devem ser preenchidas pela equipe, pois não foram fornecidas datas nem disponibilidade individual.

Estados recomendados: `A fazer`, `Em andamento`, `Em revisão`, `Bloqueado`, `Concluído`.

### 3.1 Fase 1 — Documentação e modelagem (sem código de backend)

#### Lucas — Infraestrutura e Identidade

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F1-L1 | Identificar requisitos de identidade para os perfis e o fluxo de acesso previsto | P0 | Necessidades de autenticação/autorização documentadas, sem pressupor mecanismo não aprovado |
| F1-L2 | Definir princípios de segregação e confidencialidade dos dados de cada usuário | P0 | Regras de acesso e riscos de exposição revisados com Eduardo |
| F1-L3 | Documentar opções e requisitos de infraestrutura para desenvolvimento, testes e hospedagem | P0 | Ambientes, premissas, restrições e responsáveis descritos |
| F1-L4 | Propor estratégia de configuração segura, gestão de segredos e variáveis de ambiente | P1 | Procedimento documentado; sem inserir credenciais no repositório |
| F1-L5 | Identificar requisitos de backup, recuperação, disponibilidade e observabilidade compatíveis com o projeto | P1 | Proposta proporcional ao ambiente acadêmico registrada |
| F1-L6 | Revisar ameaças iniciais de identidade/infraestrutura e estratégias de mitigação | P1 | Riscos incluídos no registro geral, com responsável |
| F1-L7 | Participar da revisão de passagem da Fase 1 | P0 | Pendências e decisões de infraestrutura/identidade registradas |

#### Daniel — Visão, Protótipos e Planejamento

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F1-D1 | Consolidar problema, contexto, público-alvo, stakeholders e objetivos | P0 | Seções revisadas no Documento de Visão |
| F1-D2 | Delimitar escopo funcional, itens fora do escopo, premissas, restrições e riscos iniciais | P0 | Baseline de escopo publicada e validada pela equipe |
| F1-D3 | Definir fluxos prioritários e critérios de sucesso/aceite | P0 | Fluxos e critérios rastreáveis aos objetivos |
| F1-D4 | Elaborar protótipos/wireframes do painel, listagem, cadastro/edição e relatório | P0 | Protótipos acessíveis à equipe e revisados; estados vazios/erros relevantes considerados |
| F1-D5 | Validar protótipos e termos com equipe e, quando viável, representantes do público-alvo | P1 | Feedback e mudanças prioritárias registrados |
| F1-D6 | Criar o planejamento, marcos, matriz RACI e backlog inicial | P0 | Planejamento revisado pelos quatro integrantes |
| F1-D7 | Definir proposta inicial de métricas e plano de validação | P1 | Metas quantitativas marcadas como propostas até aprovação |
| F1-D8 | Consolidar revisão cruzada e baseline da documentação da Etapa 2 | P0 | Aprovação ou lista de pendências registrada |

#### Guilherme — Modelagem Lógica e de Dados, Casos de Uso e DER

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F1-G1 | Levantar entidades candidatas e atributos a partir dos requisitos da visão | P0 | Glossário inicial e dados obrigatórios/opcionais descritos |
| F1-G2 | Elaborar modelo lógico e diagrama entidade-relacionamento | P0 | Entidades, relacionamentos, chaves e cardinalidades revisados |
| F1-G3 | Especificar regras de integridade, formatos, moedas, valores e datas | P0 | Regras documentadas e consistentes com projeções e API |
| F1-G4 | Definir casos de uso e atores para fluxos essenciais | P0 | Fluxos principal, alternativos e exceções relevantes descritos |
| F1-G5 | Analisar periodicidades e regras conceituais de normalização de valores para projeção | P1 | Premissas e exemplos revisados com Daniel e Eduardo |
| F1-G6 | Identificar tratamento conceitual de registros inativos/removidos e histórico | P1 | Decisão de modelagem registrada e refletida no DER/casos de uso |
| F1-G7 | Revisar consistência do modelo com contrato REST e requisitos de privacidade | P0 | Pendências encaminhadas aos responsáveis e revisões concluídas |

#### Eduardo — Arquitetura e APIs, Contrato REST e Integração

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F1-E1 | Definir arquitetura lógica e responsabilidades dos componentes | P0 | Diagrama e descrição de componentes aprovados pela equipe |
| F1-E2 | Propor recursos, operações, formatos e erros da API REST | P0 | Contrato inicial cobre CRUD e consultas priorizadas |
| F1-E3 | Definir requisitos de autenticação/autorização e interação com identidade | P0 | Alinhamento com Lucas documentado |
| F1-E4 | Pesquisar e validar documentação atual da AwesomeAPI, pares e formato de resposta | P0 | Fonte, endpoint previsto, campos e limitações registrados; validar novamente antes de implementação |
| F1-E5 | Especificar integração: timeout, validação, cache/idade máxima, falha e apresentação da cotação | P0 | Fluxo normal e contingências descritos e alinhados à visão |
| F1-E6 | Definir comportamento conceitual de filtros, paginação e ordenação da API | P1 | Contrato deixa claros parâmetros e limites previstos |
| F1-E7 | Propor abordagem de testes de unidade, integração e contrato para API e integração externa | P1 | Casos de teste e dependências identificados |
| F1-E8 | Revisar arquitetura e contrato contra o DER, casos de uso e protótipos | P0 | Inconsistências resolvidas ou listadas com decisão responsável |

#### Tarefas compartilhadas da Fase 1

| ID | Tarefa | Responsável principal | Colaboradores | Prioridade | Critério de conclusão |
|---|---|---|---|:---:|---|
| F1-C1 | Criar/organizar diretórios e convenções de documentação no repositório GitHub | Lucas | Todos | P0 | Estrutura acordada, arquivos identificáveis e acessíveis |
| F1-C2 | Definir glossário comum (assinatura, recorrência, próxima cobrança, projeção, cotação) | Daniel | Guilherme, Eduardo | P1 | Termos usados consistentemente nos artefatos |
| F1-C3 | Fazer revisão cruzada de requisitos, dados, arquitetura e protótipos | Daniel | Todos | P0 | Comentários resolvidos ou registrados como pendências |
| F1-C4 | Aprovar baseline, prioridades, riscos e critério de passagem para desenvolvimento | Daniel | Todos | P0 | Decisão registrada e backlog da Fase 2 ordenado |

### 3.2 Fase 2 — Desenvolvimento, hospedagem e testes

#### Lucas — Infraestrutura, Identidade e Segurança Operacional

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F2-L1 | Preparar estrutura de branches, revisões e proteções do repositório | P0 | Fluxo de contribuição comunicado e aplicado |
| F2-L2 | Configurar ambientes de desenvolvimento/teste e variáveis de configuração | P0 | Instruções reproduzíveis; nenhum segredo versionado |
| F2-L3 | Configurar PostgreSQL e parâmetros de conexão por ambiente | P0 | Backend conecta ao banco de forma segura nos ambientes previstos |
| F2-L4 | Implementar ou integrar mecanismos de identidade e controle de acesso aprovados | P0 | Fluxos de acesso testados e alinhados ao desenho de Lucas/Eduardo |
| F2-L5 | Preparar hospedagem e configuração de execução da aplicação | P0 | Aplicação disponível no ambiente acordado e configuração documentada |
| F2-L6 | Definir e executar estratégia de backup/recuperação compatível com o ambiente | P1 | Procedimento testado ou limitações explicitadas |
| F2-L7 | Executar ou coordenar SAST e DAST, registrar achados, severidade e evidências | P0 | Relatório de triagem e plano de correção disponíveis |
| F2-L8 | Apoiar correção e reteste de vulnerabilidades de configuração/infraestrutura | P0 | Achados relevantes corrigidos ou formalmente aceitos com justificativa |
| F2-L9 | Preparar checklist de publicação, operação e demonstração final | P1 | Checklist concluído e revisado |

#### Daniel — Produto, Protótipos, Interface e Validação

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F2-D1 | Refinar critérios de aceitação e manter backlog conforme feedback e capacidade | P0 | Itens alterados rastreados e priorizados |
| F2-D2 | Implementar interface conforme protótipos e arquitetura acordada (em coordenação com a equipe) | P0 | Telas essenciais conectadas aos fluxos funcionais; limites de autoria/capacidade decididos pelo grupo |
| F2-D3 | Implementar estados de carregamento, vazio, erro e indisponibilidade cambial na interface | P1 | Mensagens compreensíveis e sem apresentação enganosa de dados |
| F2-D4 | Validar listagem, busca, filtros, painel e relatórios contra requisitos | P0 | Evidências de teste/aceitação registradas |
| F2-D5 | Verificar clareza da cotação, data/hora e caráter estimativo da conversão | P0 | Elementos informativos visíveis nos relatórios relevantes |
| F2-D6 | Conduzir validação de usabilidade/demonstração dos fluxos principais | P1 | Feedback e defeitos priorizados registrados |
| F2-D7 | Coordenar revisão final, notas de versão e materiais de demonstração | P0 | Entrega final consistente com funcionalidades de fato implementadas |

#### Guilherme — Modelo, Dados e Qualidade Funcional

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F2-G1 | Implementar modelos de domínio e migrações de banco conforme DER aprovado | P0 | Migrações aplicadas em ambiente limpo e modelo revisado |
| F2-G2 | Implementar validações e regras de integridade de dados | P0 | Campos, moedas, datas e periodicidades inválidas rejeitados adequadamente |
| F2-G3 | Implementar regras de normalização e projeção financeira acordadas | P0 | Exemplos e limites documentados; cálculos cobertos por testes |
| F2-G4 | Implementar e/ou apoiar operações CRUD de acordo com casos de uso | P0 | Criar, consultar, editar e desativar/remover testados |
| F2-G5 | Desenvolver testes para regras de negócio, periodicidades e cenários de calendário | P0 | Casos comuns, limites e exceções relevantes cobertos |
| F2-G6 | Verificar consistência entre dados persistidos, respostas da API e apresentação | P1 | Divergências identificadas e resolvidas com Eduardo/Daniel |
| F2-G7 | Atualizar DER, dicionário de dados e casos de uso conforme implementação final | P1 | Documentação reflete o sistema entregue |

#### Eduardo — Arquitetura, API e Integração

| ID | Tarefa | Prioridade | Dependência / critério de conclusão |
|---|---|:---:|---|
| F2-E1 | Implementar API com Django REST Framework conforme contrato aprovado | P0 | Endpoints prioritários funcionais e documentados |
| F2-E2 | Implementar validações, tratamento de erro, filtros e paginação previstos | P0 | Respostas consistentes com o contrato e testadas |
| F2-E3 | Implementar integração com AwesomeAPI para USD/EUR → BRL | P0 | Conversão validada com teste usando resposta real ou fixture controlada |
| F2-E4 | Implementar timeout, tratamento de indisponibilidade e validação da cotação | P0 | Falha não bloqueia indevidamente todo o sistema nem resulta em taxa enganosa |
| F2-E5 | Implementar cache ou estratégia de contingência aprovada, com validade explícita | P1 | Idade e fonte da taxa recuperável e exibida/registrada conforme decisão |
| F2-E6 | Implementar proteção de acesso e isolamento de dados em endpoints | P0 | Testes negativos confirmam que usuário não acessa dados alheios |
| F2-E7 | Criar testes de contrato, integração da API e cenários de erro externos | P0 | Testes automatizados executados e resultados documentados |
| F2-E8 | Atualizar especificação e documentação técnica da API após implementação | P1 | Contrato corresponde ao comportamento publicado |

#### Tarefas compartilhadas da Fase 2

| ID | Tarefa | Responsável principal | Colaboradores | Prioridade | Critério de conclusão |
|---|---|---|---|:---:|---|
| F2-C1 | Integrar continuamente as entregas em ambiente de teste | Eduardo | Todos | P0 | Fluxo ponta a ponta executado em ambiente compartilhado |
| F2-C2 | Executar testes funcionais, regressão e aceitação | Daniel | Guilherme, Eduardo | P0 | Critérios obrigatórios aprovados ou defeitos formalmente registrados |
| F2-C3 | Corrigir defeitos prioritários e executar retestes | Responsável por componente | Todos | P0 | Bloqueadores e defeitos de severidade alta resolvidos ou com decisão explícita |
| F2-C4 | Executar análise SAST/DAST e triagem conjunta | Lucas | Eduardo, Guilherme | P0 | Achados categorizados, atribuídos e retestados |
| F2-C5 | Atualizar documentos, decisões e instruções de execução | Daniel | Todos | P1 | Repositório contém documentação coerente e suficiente para avaliação |
| F2-C6 | Realizar demonstração e registrar aceite/pendências finais | Daniel | Todos | P0 | Demonstração dos fluxos, evidências e pendências finais registradas |

### 3.3 Dependências e regras do backlog

- F2-* depende da aprovação da baseline relevante em F1; não iniciar implementação em desacordo silencioso com o modelo ou contrato.
- A implementação da conversão depende da validação do contrato atual da AwesomeAPI e da definição de contingência.
- Projeções dependem da decisão documentada sobre periodicidades, datas, arredondamento e tratamento de moedas.
- A publicação depende de ambiente/configuração preparados e de instruções de operação mínimas.
- Uma tarefa só deve ser marcada como concluída quando seu critério de conclusão for atendido e houver revisão ou evidência adequada.
- Estimativas, datas de início e término, esforço e estado devem ser adicionados pela equipe ao backlog quando o calendário acadêmico estiver confirmado.

## 4. Marcos do Projeto (Milestones)

Como não foram fornecidas datas, os marcos são definidos por condição de saída. A equipe poderá atribuir datas após confirmar calendário, carga de trabalho e prazos acadêmicos.

| Marco | Fase | Entregáveis | Critérios de saída |
|---|---|---|---|
| M0 — Início e organização | Preparação | Repositório organizado; papéis confirmados; convenções de documentação; calendário e cadência acordados | Todos sabem onde registrar tarefas, decisões e documentos |
| M1 — Visão e escopo baseline | Fase 1 | Documento de Visão; público/stakeholders; escopo, premissas, riscos e critérios de sucesso | Daniel apresenta a baseline; equipe revisa e registra aprovação/pendências |
| M2 — Protótipos e fluxos | Fase 1 | Protótipos das telas essenciais; fluxos principais e estados relevantes | Fluxos compreensíveis e coerentes com o escopo e casos de uso |
| M3 — Modelagem lógica e casos de uso | Fase 1 | DER/modelo lógico; regras de dados; casos de uso | Guilherme e equipe confirmam consistência com visão/protótipos |
| M4 — Arquitetura e contrato | Fase 1 | Componentes; contrato REST; especificação AwesomeAPI; requisitos de identidade e testes | Contrato suficiente para implementar; riscos/contingências explicitados |
| M5 — Gate de passagem para desenvolvimento | Fim da Fase 1 | Baseline documental revisada; backlog priorizado; critérios de aceite; estratégia de ambiente/hospedagem | Pendências críticas resolvidas ou aceitas com responsável e plano; aprovação do grupo |
| M6 — Base técnica e persistência | Fase 2 | Ambientes, identidade inicial, PostgreSQL, modelos e migrações | Projeto executa em ambiente acordado; persistência e controles básicos testados |
| M7 — Fluxo funcional essencial | Fase 2 | CRUD, API, busca/filtros e interface principal | Fluxos prioritários demonstráveis de ponta a ponta |
| M8 — Relatórios e integração cambial | Fase 2 | Dashboard/projeções; conversão USD/EUR para BRL; tratamento de falhas | Cálculos testados e cotação/horário/limitações apresentados corretamente |
| M9 — Qualidade, segurança e hospedagem | Fase 2 | Testes automatizados; publicação; evidências SAST/DAST; triagem/correções | Aplicação acessível no ambiente acordado; riscos críticos tratados ou decisão documentada |
| M10 — Entrega e demonstração final | Fase 2 | Documentação final; demonstração; evidências; lista de limitações/conhecidos | Equipe demonstra critérios de sucesso, registra aceite e pendências residuais |

### 4.1 Evidências sugeridas por marco

- links de pull requests ou commits relevantes no repositório;
- versão datada dos documentos e diagramas;
- capturas ou link dos protótipos;
- resultados de testes e relatórios de análise de segurança;
- checklist de critérios de aceite preenchido;
- registro breve das decisões, defeitos aceitos e mudanças de escopo.

## 5. Estratégia de Gestão de Riscos durante o Desenvolvimento

### 5.1 Processo contínuo

1. **Identificar:** cada integrante registra riscos técnicos, de prazo, dependência externa, segurança, dados, integração ou avaliação acadêmica assim que surgirem.
2. **Descrever:** registrar causa, evento possível, consequência, sinais de alerta e tarefas afetadas.
3. **Avaliar:** atribuir probabilidade e impacto (Baixo, Médio ou Alto). Priorizar primeiro riscos de alto impacto, riscos que bloqueiem marcos e riscos com pouca margem de recuperação.
4. **Planejar resposta:** selecionar uma ou mais respostas — evitar, reduzir, transferir quando aplicável ou aceitar com justificativa — e definir ação preventiva e contingência.
5. **Atribuir:** cada risco ativo deve ter um proprietário nominal, próximo passo e data de revisão.
6. **Monitorar:** revisar riscos em cada sincronização semanal e em todos os marcos; atualizar estado e avaliação quando houver mudança.
7. **Escalar:** se o risco ameaçar um marco, segurança, privacidade ou critério acadêmico, comunicar imediatamente a equipe e registrar decisão sobre escopo/prazo.
8. **Encerrar/aprender:** encerrar somente quando a causa deixar de existir ou o evento não puder mais afetar o projeto; registrar a lição para a entrega final.

### 5.2 Registro mínimo de risco

Manter no repositório uma tabela com os campos:

| Campo | Descrição |
|---|---|
| ID | Identificador estável (R1, R2...) |
| Risco e causa | Evento incerto e condição que o pode provocar |
| Consequência | Efeito sobre escopo, prazo, qualidade, segurança ou avaliação |
| Probabilidade / impacto | Baixa, média ou alta, com justificativa breve |
| Indicador de alerta | Sinal que sugere aumento de exposição |
| Resposta preventiva | Ação para reduzir probabilidade ou impacto |
| Contingência | O que fazer se o evento ocorrer |
| Proprietário | Integrante responsável por monitorar e agir |
| Estado / revisão | Aberto, mitigado, ocorrido, aceito ou encerrado; última revisão |

### 5.3 Respostas prioritárias por risco

| Risco prioritário | Sinal de alerta | Prevenção | Contingência |
|---|---|---|---|
| AwesomeAPI indisponível ou alterada | Timeout, erro HTTP, resposta fora do contrato ou taxa sem horário confiável | Validar contrato, isolar integração, configurar timeout e teste com fixture, definir cache válido | Exibir indisponibilidade/última taxa dentro da validade; manter valor original; não rotular taxa antiga como atual; documentar limitação |
| Atraso da equipe ou tarefa crítica concentrada em uma pessoa | Marco com tarefas P0 bloqueadas, ausência de revisão ou dependência sem retorno | Dividir em entregas menores, compartilhar conhecimento, sincronizar semanalmente e sinalizar bloqueios cedo | Repriorizar backlog, reduzir itens P2, redistribuir trabalho mediante acordo e registrar impacto no marco |
| Expansão ou ambiguidade de escopo | Solicitações fora da visão, mudanças frequentes nos requisitos ou retrabalho | Manter baseline e critérios de aceite, realizar análise de impacto e revisão formal | Adiar item não essencial ou substituir por outro de esforço comparável, mediante aprovação do grupo |
| Divergência entre DER, contrato API e interface | Campos/estados incompatíveis, retrabalho em integração ou documentação contraditória | Revisões cruzadas em M3/M4 e rastreabilidade requisito → dados → endpoint → teste | Suspender mudança isolada, convocar revisão curta dos responsáveis e publicar uma decisão única |
| Projeções ou conversão incorretas | Totais inconsistentes, periodicidade mal interpretada, arredondamento inesperado | Definir exemplos de referência, regras de cálculo e casos de teste de calendário/moeda | Corrigir cálculo, sinalizar relatórios afetados e revisar novamente os critérios e dados usados |
| Falha de controle de acesso ou exposição de dados | Teste negativo permite leitura/alteração por usuário não autorizado; segredo aparece no Git | Princípio do menor privilégio, revisão de autenticação/autorização, gestão segura de segredos e testes de isolamento | Restringir acesso/publicação, revogar/rotacionar segredo exposto, corrigir e retestar; avaliar necessidade de comunicação conforme contexto acadêmico |
| Falha de hospedagem ou ambiente não reproduzível | Configuração funciona apenas em uma máquina ou publicação atrasa | Testar cedo o caminho de implantação, documentar dependências e configurar ambiente separado | Acionar ambiente alternativo compatível; priorizar execução demonstrável e registrar limitações |
| Achados críticos em SAST/DAST próximos à entrega | Vulnerabilidades de severidade alta/crítica sem proprietário ou tempo de correção | Executar análises antes do marco final, corrigir durante desenvolvimento e revisar dependências | Suspender divulgação ampla, corrigir ou mitigar; registrar exceção apenas com justificativa, risco residual e aprovação da equipe/docente |

### 5.4 Regras de escalonamento e tolerância

- Risco de segurança ou exposição de dados não deve ser aceito silenciosamente; requer registro, contenção e decisão explícita.
- Se uma tarefa P0 ficar bloqueada por mais de um ciclo de sincronização, seu responsável deve propor alternativa ou escalonamento.
- Se o cronograma apertar, reduzir primeiro itens P2 e melhorias não essenciais, preservando segurança, persistência, fluxos essenciais e critérios de aceite.
- Não presumir que cache de cotação autoriza mostrar valor antigo como atual; toda contingência deve indicar claramente a referência temporal e as limitações.
- Riscos aceitos devem indicar quem aprovou, motivo, impacto residual e quando serão revistos.

---

**Nota de planejamento:** datas, estimativas, ferramentas de hospedagem, processo de revisão e metas quantitativas ainda precisam ser confirmados pela equipe. Este documento serve como baseline inicial e deve evoluir por mudanças registradas, não por alterações tácitas.