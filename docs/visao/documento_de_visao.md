# Documento de Visão — SubTracker

| Campo | Informação |
|---|---|
| Projeto | SubTracker — Gestor de Assinaturas e Recorrências |
| Etapa | Etapa 2 — Visão e Planejamento |
| Equipe | Lucas (Infraestrutura e Identidade); Daniel (Visão, Protótipos e Planejamento); Guilherme (Modelagem Lógica e de Dados); Eduardo (Arquitetura e APIs) |

## 1. Contexto e Problema

Serviços digitais, academias, ferramentas de produtividade, infraestrutura de TI e outros produtos são frequentemente contratados por meio de planos recorrentes. A cobrança automática reduz o esforço de renovação, mas também torna mais difícil perceber quanto será debitado, quando ocorrerá a próxima cobrança e quais serviços continuam sendo necessários.

Na ausência de um registro centralizado, a pessoa usuária tende a depender de extratos bancários, mensagens de e-mail, aplicativos isolados ou memória própria. Essa dispersão pode provocar:

- esquecimento de renovações automáticas e cobranças inesperadas;
- dificuldade para estimar despesas futuras e organizar o orçamento mensal;
- pagamentos simultâneos ou sobreposição de serviços semelhantes;
- falta de visibilidade sobre o custo total de assinaturas cobradas em moedas diferentes;
- dificuldade para localizar, revisar ou cancelar uma assinatura pouco utilizada.

O SubTracker pretende reduzir esse problema oferecendo um ponto único para registrar e acompanhar assinaturas e outras despesas recorrentes. A aplicação apoia a tomada de decisão financeira pessoal, mas não substitui extratos bancários, serviços contábeis nem a confirmação de cobranças junto ao fornecedor.

## 2. Objetivos do Sistema

### 2.1 Objetivo geral

Disponibilizar uma aplicação web para que pessoas usuárias centralizem suas assinaturas, compreendam o calendário de cobranças e obtenham uma estimativa consolidada de seus compromissos recorrentes.

### 2.2 Objetivos específicos

1. **Centralização:** permitir o cadastro, a consulta, a atualização e a remoção lógica ou desativação de assinaturas em um único ambiente.
2. **Previsibilidade financeira:** apresentar valores recorrentes e próximas datas de cobrança, com projeções por período para apoiar o planejamento.
3. **Visão consolidada:** agrupar despesas por categoria, situação, periodicidade e moeda, além de oferecer indicadores resumidos em painel e relatórios.
4. **Conversão multimoeda:** converter valores registrados em USD e EUR para BRL nos relatórios por meio da API pública AwesomeAPI, identificando a taxa e o momento de referência utilizados.
5. **Acesso estruturado aos dados:** disponibilizar uma API REST para as operações previstas no sistema, com validação, documentação e controle de acesso definidos durante a arquitetura.
6. **Usabilidade e transparência:** deixar claros os dados informados pelo usuário, os critérios das projeções e eventuais limitações da cotação cambial.

### 2.3 Resultados esperados

- A pessoa usuária consegue identificar rapidamente suas assinaturas ativas e seus próximos vencimentos.
- O custo recorrente deixa de depender de cálculos manuais dispersos.
- Valores em moedas estrangeiras podem ser apresentados em BRL com indicação de que a conversão é uma estimativa baseada em cotação consultada, e não necessariamente o valor efetivamente cobrado pela instituição financeira.

## 3. Público-Alvo e Stakeholders

### 3.1 Público-alvo

| Grupo | Necessidade principal | Observação |
|---|---|---|
| Usuários individuais | Acompanhar serviços de streaming, academia, armazenamento, telefonia e outras assinaturas pessoais | Público primário; busca simplicidade e previsibilidade mensal |
| Pequenos autônomos e profissionais independentes | Controlar ferramentas, hospedagem, domínios, software e serviços de trabalho com cobrança recorrente | Podem misturar despesas pessoais e profissionais; o sistema não é, nesta versão, um sistema contábil ou fiscal |
| Desenvolvedores e equipe técnica | Integrar, manter e testar a aplicação e sua API | Stakeholders técnicos; precisam de contratos claros, documentação e critérios de qualidade |

### 3.2 Stakeholders e interesses

| Stakeholder | Papel/interesse |
|---|---|
| Daniel | Responsável pela visão do produto, protótipos, planejamento, priorização e consolidação dos artefatos da Etapa 2 |
| Lucas | Responsável por infraestrutura e identidade; define e documenta as decisões de ambiente, configuração e identidade dentro do escopo acadêmico |
| Guilherme | Responsável pela modelagem lógica e de dados, casos de uso e diagrama entidade-relacionamento (DER) |
| Eduardo | Responsável pela arquitetura, componentes, contrato REST e integração com serviços externos |
| Usuários finais | Fornecem necessidades, validam protótipos e avaliam clareza e utilidade das informações |
| Docente/avaliador | Verifica aderência aos requisitos acadêmicos, qualidade dos artefatos, execução e evidências de teste |
| Provedor da AwesomeAPI | Fornece cotações cambiais públicas; sua disponibilidade e formato de resposta são dependências externas |

## 4. Escopo Funcional

O escopo abaixo representa a visão funcional pretendida. A implementação será realizada somente na Fase 2; na Fase 1, o trabalho limita-se a documentação, modelagem, protótipos e planejamento, sem implementação de código de backend.

### 4.1 Gestão de assinaturas

O sistema deverá permitir, conforme detalhamento posterior dos casos de uso:

- criar um registro de assinatura ou despesa recorrente;
- visualizar os detalhes de um registro;
- editar informações cadastradas;
- remover ou desativar um registro, preservando a consistência histórica conforme decisão de modelagem;
- informar, no mínimo, nome/descrição do serviço, valor, moeda, periodicidade, data da próxima cobrança, categoria e situação;
- registrar observações opcionais e, se aprovado na modelagem, fornecedor ou URL relacionada;
- validar campos obrigatórios, formato de valores, datas e moedas aceitas.

A lista definitiva de atributos e regras de integridade será definida nos artefatos da Etapa 3 e no contrato de API da Etapa 4.

### 4.2 Busca, filtros e ordenação

A pessoa usuária deverá conseguir localizar registros por texto e refinar a listagem, conforme os filtros aprovados, incluindo:

- nome ou descrição;
- categoria;
- situação (por exemplo, ativa ou inativa);
- moeda;
- periodicidade;
- intervalo ou proximidade da próxima cobrança.

A interface deverá apresentar resultados de maneira previsível, com ordenação útil — por exemplo, por nome, valor ou próxima cobrança — e indicar quando nenhum resultado corresponder aos critérios informados.

### 4.3 Painel e relatórios com projeções

O sistema deverá apresentar uma visão resumida das despesas recorrentes, contemplando, conforme a disponibilidade dos dados:

- total estimado de despesas por mês e/ou período selecionado;
- próximas cobranças e respectivos valores e datas;
- distribuição por categoria e moeda;
- projeções para um horizonte de tempo claramente informado;
- valores normalizados para BRL para fins de consolidação, quando houver conversão cambial válida.

As projeções serão estimativas calculadas a partir dos dados registrados pelo usuário e da periodicidade cadastrada. Devem ser exibidas as premissas relevantes, como normalização de cobranças anuais para comparação mensal e cotação cambial utilizada. O relatório não deve ser apresentado como garantia de débito futuro nem como extrato bancário.

### 4.4 API REST

O backend deverá expor uma API REST para as funcionalidades acordadas, implementada com Django REST Framework. O contrato deverá definir recursos, operações, formatos de requisição e resposta, códigos de status, validações, paginação/filtros quando aplicável, erros e política de versionamento. A autenticação e autorização serão detalhadas nos artefatos de identidade e arquitetura antes da implementação.

### 4.5 Integração com a AwesomeAPI

Para relatórios que consolidem valores em USD ou EUR em BRL, o sistema consultará a API pública AwesomeAPI. O desenho da integração deverá prever:

- consulta apenas dos pares cambiais necessários, após confirmação do formato e endpoint vigentes;
- validação da resposta, da moeda, do valor numérico e do horário da cotação;
- indicação da data/hora ou referência da taxa usada no relatório;
- tratamento de timeout, resposta inválida, limite de uso ou indisponibilidade;
- estratégia de cache ou última cotação válida, se aprovada na arquitetura, com idade máxima explicitada;
- apresentação de aviso ou de estado indisponível quando não houver taxa confiável, sem ocultar silenciosamente a falha.

A conversão serve a uma estimativa informativa. A cotação da AwesomeAPI pode diferir da taxa aplicada por bancos, emissores de cartão ou provedores de pagamento.

### 4.6 Protótipos

Na Fase 1, serão produzidos protótipos das telas essenciais para validação de fluxo e conteúdo, como painel, listagem/filtros, cadastro/edição e relatório. Protótipos não equivalem a funcionalidades implementadas.

## 5. Itens Fora do Escopo

Não fazem parte da versão acadêmica inicialmente planejada:

- processamento, autorização ou liquidação de pagamentos reais;
- integração com gateway de cartão de crédito ou armazenamento de dados de cartão;
- conexão automática com bancos, instituições financeiras ou agregadores de extratos;
- cancelamento de assinaturas diretamente nos fornecedores;
- alertas ou notificações por SMS;
- garantia de que uma cobrança ocorrerá exatamente na data ou pelo valor estimado;
- escrituração contábil, emissão de documentos fiscais, aconselhamento financeiro ou cálculo tributário;
- conversão monetária como serviço de câmbio ou cotação garantida para transações;
- aplicativo móvel nativo, salvo revisão formal do escopo;
- automações de cobrança ou comunicação externa não descritas nos requisitos aprovados.

Notificações por e-mail ou push também não são presumidas como parte da primeira versão; sua inclusão exigiria priorização e aprovação explícitas.

## 6. Premissas e Restrições Técnicas

### 6.1 Premissas

- O projeto é universitário, desenvolvido por uma equipe de quatro integrantes e sujeito a prazo e critérios acadêmicos a serem confirmados pela equipe.
- Os valores, datas, periodicidades e status das assinaturas serão inicialmente informados e mantidos pela própria pessoa usuária.
- A conversão cambial depende de conectividade e da disponibilidade e estabilidade da API pública externa.
- A equipe validará endpoint, formato, limitações de uso e condições atuais da AwesomeAPI antes de codificar a integração.
- A Fase 1 é de documentação e modelagem: **não haverá implementação de código de backend nessa fase**.
- Protótipos e modelos produzidos na Fase 1 podem ser revistos quando requisitos, riscos ou resultados de validação justificarem a mudança.

### 6.2 Restrições tecnológicas

- Linguagem de backend: **Python**.
- Framework de aplicação: **Django**.
- Framework de API: **Django REST Framework**.
- Banco de dados relacional: **PostgreSQL**.
- Integração cambial prevista: **AwesomeAPI**.
- O uso de outras tecnologias de infraestrutura, frontend, hospedagem ou testes deverá ser documentado e compatível com os critérios acadêmicos e as decisões da equipe.

### 6.3 Restrições de qualidade e segurança

- Dados de assinatura são dados financeiros pessoais e deverão ser tratados com confidencialidade e acesso restrito ao titular autorizado.
- Segredos e credenciais não deverão ser armazenados no repositório em texto aberto.
- A implementação deverá validar entradas e aplicar controles contra riscos comuns de aplicações web e APIs.
- A equipe deverá planejar testes funcionais e verificações SAST/DAST na Fase 2, observando que resultados automatizados precisam de triagem e correção manual.
- Decisões de autenticação, autorização, retenção de dados, cópias de segurança e publicação deverão ser registradas antes ou durante a implementação.

## 7. Riscos Iniciais e Mitigações

| ID | Risco | Probabilidade / impacto inicial | Mitigação e contingência | Responsável primário |
|---|---|---|---|---|
| R1 | Indisponibilidade, lentidão ou alteração no formato da AwesomeAPI | Média / Alto | Validar o contrato antes do desenvolvimento; encapsular a integração; aplicar timeout, validação e tratamento de erros; considerar cache/última taxa válida com prazo explícito; exibir aviso e evitar conversão enganosa. | Eduardo |
| R2 | Cotação divergente da taxa efetivamente aplicada ao usuário | Alta / Médio | Identificar fonte e horário da cotação; comunicar caráter estimativo; não prometer valor final de cobrança; separar o valor original do valor convertido. | Daniel e Eduardo |
| R3 | Atrasos por disponibilidade limitada ou dependências entre integrantes | Média / Alto | Dividir entregas em marcos pequenos; registrar responsáveis e dependências; realizar sincronizações regulares; sinalizar bloqueios cedo; manter margem para revisão e integração. | Daniel |
| R4 | Requisitos ambíguos ou alteração tardia de escopo | Média / Alto | Validar visão e protótipos com equipe/docente; manter backlog priorizado e histórico de decisões; submeter mudanças a análise de impacto em prazo e entregas. | Daniel |
| R5 | Divergência entre modelo de dados, casos de uso e contrato REST | Média / Médio | Revisões cruzadas entre Guilherme e Eduardo; rastrear requisitos para entidades e endpoints; aprovar versões consistentes antes de codificar. | Guilherme e Eduardo |
| R6 | Exposição indevida de dados ou credenciais | Baixa a Média / Alto | Definir identidade e autorização; limitar dados coletados; usar configuração segura para segredos; revisar permissões; testar controles e dependências na Fase 2. | Lucas e Eduardo |
| R7 | Projeções incorretas por periodicidade, datas ou moeda mal interpretadas | Média / Alto | Definir regras de normalização e arredondamento; validar entradas; documentar calendário e premissas; criar casos de teste para periodicidades e mudança de mês/ano. | Guilherme e Daniel |
| R8 | Hospedagem ou ambiente de desenvolvimento indisponível no prazo | Média / Médio | Escolher e testar a opção de hospedagem com antecedência; documentar configuração reprodutível; prever alternativa compatível e reservar tempo de publicação. | Lucas |
| R9 | Falsos positivos ou cobertura insuficiente em SAST/DAST | Média / Médio | Executar ferramentas apropriadas e revisar resultados; priorizar achados por severidade e contexto; registrar limitações, correções e evidências; complementar com testes manuais. | Lucas e Eduardo |

A avaliação é preliminar. Probabilidade e impacto deverão ser reavaliados em cada marco, com inclusão de novos riscos identificados.

## 8. Critérios de Sucesso

O projeto será considerado bem-sucedido quando os critérios abaixo forem atendidos e demonstrados por evidências acordadas com a equipe e o avaliador:

1. **Aderência documental:** os artefatos das Etapas 1 a 4 necessários à entrega estão consistentes, versionados e revisados pela equipe.
2. **Fluxo principal funcional:** na Fase 2, um usuário autorizado consegue cadastrar, consultar, editar e desativar/remover uma assinatura conforme regras aprovadas.
3. **Pesquisa útil:** listagem, busca e filtros retornam resultados compatíveis com os critérios informados e exibem estado vazio de forma compreensível.
4. **Visibilidade financeira:** painel/relatório apresenta próximas cobranças e projeções em periodicidades acordadas, com regras de cálculo testadas e documentadas.
5. **Conversão transparente:** valores de USD/EUR são convertidos para BRL quando existe uma taxa validada; o relatório identifica a referência temporal e informa limitações. Em falha externa, a interface não apresenta uma taxa como se fosse atual sem sinalização.
6. **Qualidade da API:** operações aprovadas possuem contrato documentado, validações e testes automatizados representativos; respostas de erro são previsíveis.
7. **Persistência confiável:** os dados são armazenados em PostgreSQL, com integridade e isolamento de acesso definidos e verificados.
8. **Segurança e hospedagem:** a aplicação é disponibilizada no ambiente acordado, com configuração documentada e evidências de verificações SAST/DAST executadas e triadas.
9. **Usabilidade validada:** protótipos ou aplicação são revisados por pelo menos um representante do público-alvo ou, caso isso não seja viável, por revisão estruturada da equipe/docente, e os achados prioritários são registrados.
10. **Gestão do projeto:** entregas têm responsáveis, marcos e critérios de aceite; desvios relevantes de escopo, prazo ou risco são comunicados e tratados.

### 8.1 Indicadores candidatos para validação

Como metas quantitativas ainda não foram fornecidas, os valores abaixo são **propostas a validar**, não compromissos já aprovados:

- 100% dos fluxos funcionais classificados como obrigatórios possuem ao menos um teste de aceitação documentado;
- nenhuma vulnerabilidade crítica ou alta conhecida permanece sem decisão registrada antes da demonstração final;
- os principais fluxos de cadastro, consulta e relatório são demonstráveis no ambiente de hospedagem;
- a equipe conclui as entregas acordadas de cada marco ou registra formalmente o desvio e a decisão de escopo correspondente.

---

**Nota de governança:** este documento estabelece a visão inicial. Alterações que afetem escopo, dados tratados, dependências externas, prioridades ou critérios de aceite devem ser registradas com justificativa, responsável e impacto esperado.