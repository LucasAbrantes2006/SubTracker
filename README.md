# SubTracker — Gestor de Assinaturas e Recorrências

Aplicação web universitária para centralizar assinaturas e cobranças recorrentes, acompanhar próximas renovações e estimar despesas futuras. O projeto prevê conversão informativa de valores em USD/EUR para BRL usando a AwesomeAPI.

## Situação do projeto

- **Fase 1:** documentação e modelagem. Não implementar código de backend nesta fase.
- **Fase 2:** desenvolvimento, hospedagem, testes funcionais e análises SAST/DAST.
- **Fase 3:**Datas, ambiente de hospedagem, regras finais e prioridades devem ser validados pela equipe.

## Tecnologias previstas

- Python, Django e Django REST Framework
- PostgreSQL
- AwesomeAPI para referência cambial

## Documentação

- [Documento de Visão](docs/visao/documento_de_visao.md)
- [Planejamento](docs/planejamento/planejamento.md)
- [Identidade e infraestrutura](docs/identidadeVisual/)
- [Modelagem, casos de uso e DER](docs/modelagem/)
- [Arquitetura](docs/arquitetura/)
- [Contrato da API](docs/api/)
- [Protótipos](docs/prototipos/)
- [Decisões do projeto](docs/decisoes/)

## Organização do repositório

`docs/` concentra documentos e modelos. `backend/` está reservado à implementação Django da Fase 2. `requirements/` armazenará dependências, `tests/` concentrará testes e `.github/workflows/` poderá receber automações de CI quando a equipe as configurar.

Os arquivos `.gitkeep` mantêm no Git diretórios ainda vazios; podem ser removidos quando uma pasta receber conteúdo real.

## Equipe

- **Lucas:** infraestrutura e identidade (Etapa 1)
- **Daniel:** visão, protótipos e planejamento (Etapa 2)
- **Guilherme:** modelagem lógica e de dados, casos de uso e DER (Etapa 3)
- **Eduardo:** arquitetura, componentes, contrato REST e integração (Etapa 4)
