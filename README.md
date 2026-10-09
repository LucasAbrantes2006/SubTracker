<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="images/logo-dark.svg">
    <img src="images/logo.svg" alt="Logo do SubTracker" width="480">
  </picture>
</p>

# SubTracker

[![Status](https://img.shields.io/badge/status-em_desenvolvimento-yellow)]()
[![Versão](https://img.shields.io/badge/versão-0.1.0-blue)]()
[![Licença](https://img.shields.io/badge/licença-acadêmica-lightgrey)]()

**Instituição:** CEUB  
**Curso:** Ciência da Computação  
**Disciplina:** Desenvolvimento Web  
**Turma / Semestre:** 2026.2  
**Professor:** Felippe Pires Ferreira  
**Status do projeto:** Fase 1 (documentação e arquitetura)

---

## Sumário

- [1. Descrição do projeto](#1-descrição-do-projeto)
- [2. Funcionalidades](#2-funcionalidades)
- [3. Demonstração](#3-demonstração)
- [4. Tecnologias utilizadas](#4-tecnologias-utilizadas)
- [5. Arquitetura](#5-arquitetura)
- [6. Organização dos diretórios](#6-organização-dos-diretórios)
- [7. Participantes](#7-participantes)
- [8. Como executar](#8-como-executar)
- [9. Configuração](#9-configuração)
- [10. Testes](#10-testes)
- [11. Uso de inteligência artificial](#11-uso-de-inteligência-artificial)
- [12. Contribuição e fluxo de trabalho](#12-contribuição-e-fluxo-de-trabalho)
- [13. Histórico de versões](#13-histórico-de-versões)
- [14. Limitações e próximos passos](#14-limitações-e-próximos-passos)
- [15. Licença, referências e contato](#15-licença-referências-e-contato)

---

## 1. Descrição do projeto

Hoje é comum ter várias assinaturas ao mesmo tempo: streaming, academia, armazenamento em nuvem, servidor, aplicativo de produtividade. Como quase todas renovam sozinhas, a pessoa acaba perdendo a noção de quanto vai sair da conta no mês e de quando cada cobrança cai. Fica tudo espalhado entre fatura do cartão, e-mail e memória.

O SubTracker é uma aplicação web para juntar essas cobranças recorrentes em um lugar só. O usuário cadastra cada assinatura com valor, moeda, ciclo de cobrança e categoria, e o sistema mostra quanto ele gasta por mês e por ano, quais são as próximas renovações e quais serviços estão ativos ou já foram cancelados.

Como muitos serviços cobram em dólar ou euro, o sistema consulta a cotação do dia na AwesomeAPI e converte esses valores para real na hora de montar o relatório. Assim a projeção mostra um total em BRL mais próximo do que realmente vai aparecer na fatura.

O SubTracker não se conecta a banco nem a cartão. Ele serve para organização e planejamento, e os dados são informados pelo próprio usuário.

### Objetivos

- **Objetivo geral:** desenvolver uma aplicação web para cadastrar e acompanhar assinaturas e cobranças recorrentes, com projeção de gastos mensal e anual.
- **Objetivos específicos:**
  - permitir incluir, consultar, editar e excluir/desativar assinaturas;
  - filtrar assinaturas por categoria, status e intervalo de data de renovação;
  - gerar um relatório com a projeção mensal e anual consolidada, que possa ser exportado ou impresso;
  - converter valores em USD e EUR para BRL usando a cotação da AwesomeAPI;
  - disponibilizar uma API REST própria com os dados do usuário em JSON.

### Público-alvo

- pessoas que pagam várias assinaturas e querem controlar o orçamento pessoal;
- freelancers e profissionais de TI que mantêm serviços cobrados em moeda estrangeira (hospedagem, domínios, ferramentas);
- estudantes e jovens adultos começando a organizar as próprias finanças.

---

## 2. Funcionalidades

| Funcionalidade | Descrição | Status |
| --- | --- | --- |
| Autenticação | Cadastro, login e logout; cada usuário vê apenas as próprias assinaturas | Planejada |
| Cadastro de assinaturas | Incluir, consultar, editar e excluir assinaturas (serviço, valor, moeda, ciclo, categoria, status) | Planejada |
| Busca e filtros | Pesquisa por categoria, status (ativa/inativa) e intervalo de data de renovação | Planejada |
| Relatório financeiro | Projeção mensal e anual consolidada em BRL, exportável ou imprimível | Planejada |
| Conversão de moeda | Conversão de USD/EUR para BRL com cotação da AwesomeAPI | Planejada |
| API REST | Endpoints em JSON para assinaturas e projeção financeira | Planejada |

### Requisitos não funcionais

- **Segurança:** senhas com hash (padrão do Django), HTTPS em produção, `DEBUG` desligado em produção e segredos fora do repositório.
- **Usabilidade:** interface responsiva para computador e celular.
- **Confiabilidade:** se a AwesomeAPI não responder, o relatório usa a última cotação salva no banco em vez de travar.
- **Disponibilidade:** aplicação publicada em URL pública durante o período de avaliação (Fase 2).

---

## 3. Demonstração

Ainda não há versão executável. Os protótipos das telas principais estão em [`docs/prototipos/`](docs/prototipos/).

| Tela | Descrição |
| --- | --- |
| [Dashboard](docs/prototipos/dashboard.pdf) | Visão geral com total mensal, projeção anual e próximas renovações |
| [Nova assinatura](docs/prototipos/newSubscription.pdf) | Formulário de cadastro de assinatura |
| [Analytics](docs/prototipos/analytics.pdf) | Relatório com gastos por categoria e projeção |

### Identidade visual

**Nome:** SubTracker, de *subscription* + *tracker*. A ideia é ser um nome curto que já diga o que o sistema faz.

**Logotipo:**

<img src="images/logo-icone.svg" alt="Ícone do SubTracker" width="96">

O ícone junta duas ideias do sistema: a seta circular em verde representa a renovação automática das assinaturas, e as barras crescentes no centro representam a projeção de gastos. O fundo azul-marinho e o verde esmeralda são as duas cores principais da paleta. Os arquivos estão em [`images/`](images/), em SVG (versão clara e escura) e PNG.

**Paleta de cores:**

| Cor | Hex | Uso |
| --- | --- | --- |
| Azul-marinho | `#0F172A` | Títulos, botões principais e valores totais |
| Verde esmeralda | `#10B981` | Assinaturas ativas e ações de confirmação |
| Vermelho | `#EF4444` | Assinaturas canceladas, erros e exclusão |
| Âmbar | `#F59E0B` | Renovações próximas e avisos |
| Cinza ardósia | `#64748B` | Textos secundários |
| Fundo | `#F8FAFC` | Fundo das telas |

**Tipografia:** Inter, com números tabulares (`font-variant-numeric: tabular-nums`) nos valores em dinheiro, para os números ficarem alinhados nas tabelas.

A escolha foi por um visual limpo, parecido com aplicativos de banco digital, porque o foco do sistema são números e datas. O guia completo está em [`docs/identidadeVisual/`](docs/identidadeVisual/).

---

## 4. Tecnologias utilizadas

| Camada | Tecnologia | Versão |
| --- | --- | --- |
| Linguagem | Python | 3.12 |
| Backend | Django | 5.x |
| API | Django REST Framework | 3.x |
| Frontend | HTML, CSS, Bootstrap (templates do Django) | 5.x |
| Banco de dados | PostgreSQL | 16 |
| Integração externa | AwesomeAPI (cotação de moedas) + biblioteca `requests` | — |
| Modelagem | PlantUML, Astah | — |
| Outras ferramentas | Git, GitHub | — |

As versões são as previstas para a Fase 2 e podem mudar até a implementação.

---

## 5. Arquitetura

A aplicação segue o padrão MVT do Django em uma arquitetura cliente/servidor. Os models definem as tabelas no PostgreSQL pelo ORM, as views concentram as regras de negócio e a chamada à AwesomeAPI, e os templates montam as telas. A API REST, feita com Django REST Framework, expõe os mesmos dados em JSON.

```text
[Usuário] → [Templates / Navegador] → [Views Django + DRF] → [PostgreSQL]
                                              ↓
                                     [AwesomeAPI - cotação]
```

**Decisões relevantes:**

- Django e DRF porque são exigidos/recomendados na disciplina e já trazem autenticação, ORM e admin prontos.
- PostgreSQL porque os dados têm relacionamentos claros (usuário, categoria, assinatura) e é suportado pela maioria dos serviços de hospedagem.
- A conversão de moeda é feita no backend, no momento do relatório, e a última cotação fica salva para ser usada se a API externa falhar.

Detalhes em [`docs/arquitetura/arquitetura.md`](docs/arquitetura/arquitetura.md) e no [diagrama de componentes](docs/arquitetura/diagrama_componentes.png).

### Endpoints principais

| Método | Rota | Descrição | Status de retorno |
| --- | --- | --- | --- |
| `GET` | `/api/assinaturas/` | Lista as assinaturas do usuário | 200 |
| `POST` | `/api/assinaturas/` | Cadastra uma nova assinatura | 201 / 400 |
| `GET` | `/api/assinaturas/{id_assinatura}/` | Mostra os dados de uma assinatura | 200 |
| `PUT` | `/api/assinaturas/{id_assinatura}/` | Atualiza uma assinatura existente | 200 / 404 |
| `DELETE` | `/api/assinaturas/{id_assinatura}/` | Exclui uma assinatura | 204 |
| `GET` | `/api/relatorios/projecao/` | Retorna total de assinaturas ativas, gasto mensal em BRL e projeção anual | 200 |

Exemplo de resposta da projeção:

```json
{
  "total_ativas": 8,
  "gasto_mensal_brl": 450.90,
  "projecao_anual_brl": 5410.80
}
```

Contrato completo da API: [`docs/api/contrato_api.md`](docs/api/contrato_api.md)  
Plano de integração com a AwesomeAPI: [`docs/api/plano_integracao.md`](docs/api/plano_integracao.md)

---

## 6. Organização dos diretórios

```text
.
├── README.md
├── images/                   # Logotipo (SVG e PNG) e figuras do README
├── backend/                  # Projeto Django (Fase 2)
├── docs/
│   ├── README.md             # Índice da documentação
│   ├── api/                  # Contrato da API e plano de integração externa
│   ├── arquitetura/          # Texto e diagrama de componentes
│   ├── decisoes/             # Registro de decisões do grupo
│   ├── identidadeVisual/     # Nome, paleta, tipografia e logo
│   ├── modelagem/            # Casos de uso e modelo de dados
│   │   └── diagramas/        # Fontes (.puml, .asta, .sql) e exportações (.jpeg)
│   ├── planejamento/         # Backlog, marcos e responsáveis
│   ├── prototipos/           # Protótipos das telas
│   └── visao/                # Documento de visão
├── requirements/             # Dependências Python (Fase 2)
└── tests/                    # Testes (Fase 2)
```

| Diretório / arquivo | Função |
| --- | --- |
| `README.md` | Apresentação do projeto e instruções |
| `images/` | Logotipo e imagens usadas no README |
| `backend/` | Código Django, ainda vazio na Fase 1 |
| `docs/` | Toda a documentação da Fase 1 |
| `docs/modelagem/diagramas/` | Arquivos editáveis dos diagramas e as versões exportadas |
| `requirements/` | Lista de dependências |
| `tests/` | Testes automatizados e roteiros de teste |

Na Fase 2 serão criadas as pastas `docs/seguranca/` (relatórios SAST e DAST) e o arquivo `.env.example`.

---

## 7. Participantes

| Nome | Matrícula | Função no projeto |
| --- | --- | --- |
| Lucas Abrantes | 22504836 | Infraestrutura e identidade visual: repositório, estrutura de pastas, README e identidade |
| Daniel Scartezini | 22502206 | Documento de visão, protótipos e planejamento |
| Guilherme Soato | 22507559 | Casos de uso e modelo de dados (DER) |
| Eduardo Rocha | 22500824 | Arquitetura, contrato da API REST e integração externa |

**Professor responsável:** Felippe Pires Ferreira

---

## 8. Como executar

Na Fase 1 ainda não existe código para rodar. Os passos abaixo são os previstos para a Fase 2 e serão atualizados quando o projeto Django estiver no repositório.

### Pré-requisitos

- Git
- Python 3.12+
- PostgreSQL 16

### Instalação e execução (previsto)

```bash
# 1. Clonar o repositório
git clone https://github.com/LucasAbrantes2006/SubTracker.git
cd SubTracker

# 2. Criar o ambiente virtual e instalar as dependências
python -m venv venv
source venv/bin/activate        # no Windows: venv\Scripts\activate
pip install -r requirements/requirements.txt

# 3. Configurar as variáveis de ambiente
cp .env.example .env
# editar o .env com os dados do banco local

# 4. Criar as tabelas e rodar o servidor
cd backend
python manage.py migrate
python manage.py runserver
```

**Acesso local:** http://localhost:8000

### Implantação

- **Ambiente:** a definir na Fase 2
- **URL de produção:** a definir na Fase 2
- **Documentação da API publicada:** a definir na Fase 2

---

## 9. Configuração

| Variável | Obrigatória | Descrição | Exemplo |
| --- | --- | --- | --- |
| `SECRET_KEY` | Sim | Chave secreta do Django | `[gerar localmente]` |
| `DEBUG` | Sim | Modo de depuração (`False` em produção) | `True` |
| `ALLOWED_HOSTS` | Sim | Domínios aceitos pela aplicação | `localhost,127.0.0.1` |
| `CSRF_TRUSTED_ORIGINS` | Produção | Origens confiáveis para formulários | `https://subtracker.exemplo.com` |
| `DATABASE_URL` | Sim | Conexão com o PostgreSQL | `postgresql://usuario:senha@localhost:5432/subtracker` |
| `AWESOMEAPI_URL` | Não | URL base da API de cotação | `https://economia.awesomeapi.com.br` |

Os valores reais ficam só no `.env`, que não é versionado.

---

## 10. Testes

Os testes serão escritos na Fase 2.

| Tipo | Ferramenta | O que verifica |
| --- | --- | --- |
| Unitários | Django TestCase / pytest | Cálculo da projeção mensal e anual, conversão de moeda |
| API | DRF APITestCase e coleção de requisições | Endpoints, códigos HTTP e validação |
| Manuais | Roteiro em `tests/` | Cadastro, busca e relatório pela interface |
| Segurança | Bandit ou Semgrep (SAST), OWASP ZAP (DAST) | Vulnerabilidades no código e na aplicação publicada |

**Cobertura atual:** não medida (Fase 1).

---

## 11. Uso de inteligência artificial

Este repositório segue a política de uso de IA da disciplina (semáforo pedagógico):

![Política de uso de IA — semáforo](images/semaforo.png)

| Situação | Significado |
| --- | --- |
| **Vermelho — uso proibido** | Atividades de autonomia intelectual (ex.: provas presenciais sem consulta). |
| **Amarelo — uso limitado** | IA pode ser ferramenta auxiliar, desde que haja declaração de uso. |
| **Verde — uso permitido** | Uso livre ao longo da atividade acadêmica. |

### Declaração de uso

- **Houve uso de IA neste projeto?** Sim.
- **Ferramentas utilizadas:** Claude (Anthropic) e Gemini (Google).
- **Finalidade:** a IA foi usada como apoio na escrita e na revisão dos documentos. No README, ajudou a organizar o conteúdo dentro do template da disciplina e a redigir o texto, que depois foi revisado e completado pelo grupo. Também foi usada para gerar o logotipo a partir da paleta e da ideia definidas pelo grupo, para conferir a coerência entre os documentos (por exemplo, rotas do contrato da API que estavam faltando) e para corrigir erros de formatação e de escrita.
- **O que NÃO foi delegado à IA:** a escolha do tema e do problema, a definição do escopo e das funcionalidades, a escolha das tecnologias e da API externa, a divisão de tarefas entre os integrantes, as decisões de modelagem e de arquitetura e a revisão final de todo o material. 

---

## 12. Contribuição e fluxo de trabalho

### Branches

- `main`: versão estável, usada nas entregas
- `feat/[nome]`: nova funcionalidade
- `fix/[nome]`: correção
- `docs/[nome]`: alterações de documentação

### Commits

Mensagens curtas, com prefixo:

- `docs: adiciona documento de visão`
- `feat: cria cadastro de assinaturas`
- `fix: corrige cálculo da projeção anual`

### Passos

1. Criar uma branch a partir da `main`.
2. Fazer as alterações e testar.
3. Abrir um pull request para outro integrante revisar.
4. Fazer o merge na `main` depois da revisão.

Cada integrante faz commits com a própria conta, para que a contribuição de todos fique registrada.

**Quadro de tarefas:** [`docs/planejamento/planejamento.md`](docs/planejamento/planejamento.md)

---

## 13. Histórico de versões

| Versão | Data | Descrição |
| --- | --- | --- |
| `0.1.0` | 08/10/2026 | Entrega da Fase 1: documentação, diagramas, protótipos e identidade visual |
| `0.0.1` | 08/10/2026 | Criação do repositório a partir do template e estrutura de pastas |

---

## 14. Limitações e próximos passos

### Limitações conhecidas

- Os valores das assinaturas são informados manualmente; não há integração com banco ou cartão.
- A conversão usa a cotação do momento, então o valor em BRL é uma estimativa e pode diferir da fatura (IOF, spread do cartão).
- Por enquanto só estão previstas as moedas BRL, USD e EUR.

### Roadmap

- [x] Criar repositório e estrutura de documentação
- [x] Documento de visão, casos de uso, DER, arquitetura e contrato da API (CRUD completo)
- [ ] Implementar models, CRUD e autenticação
- [ ] Implementar busca, filtros e relatório
- [ ] Integrar a AwesomeAPI com tratamento de falhas
- [ ] Publicar a aplicação com HTTPS
- [ ] Rodar SAST e DAST e corrigir os achados

---

## 15. Licença, referências e contato

**Licença:** uso exclusivamente acadêmico.

Projeto feito para a disciplina de Desenvolvimento Web. O código não deve ser reutilizado fora do curso sem autorização do grupo.

### Documentação complementar

- Índice da documentação: [`docs/README.md`](docs/README.md)
- Documento de visão: [`docs/visao/documento_de_visao.md`](docs/visao/documento_de_visao.md)
- Casos de uso: [`docs/modelagem/casos_de_uso.md`](docs/modelagem/casos_de_uso.md)
- Modelo de dados: [`docs/modelagem/modelo_de_dados.md`](docs/modelagem/modelo_de_dados.md)
- Diagramas (fontes e exportações): [`docs/modelagem/diagramas/`](docs/modelagem/diagramas/)
- Arquitetura: [`docs/arquitetura/arquitetura.md`](docs/arquitetura/arquitetura.md)
- Contrato da API: [`docs/api/contrato_api.md`](docs/api/contrato_api.md)
- Plano de integração externa: [`docs/api/plano_integracao.md`](docs/api/plano_integracao.md)
- Protótipos: [`docs/prototipos/`](docs/prototipos/)
- Planejamento: [`docs/planejamento/planejamento.md`](docs/planejamento/planejamento.md)
- Identidade visual: [`docs/identidadeVisual/`](docs/identidadeVisual/)

### Referências

- Documentação do Django: https://docs.djangoproject.com/
- Documentação do Django REST Framework: https://www.django-rest-framework.org/
- Documentação do PostgreSQL: https://www.postgresql.org/docs/
- AwesomeAPI de cotações: https://docs.awesomeapi.com.br/api-de-moedas
- Fonte Inter: https://rsms.me/inter/

### Contato

Dúvidas sobre o projeto: abrir uma issue no repositório.
