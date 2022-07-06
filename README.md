# Síndrome Gripal App - OpenDataSUS

App para visualização de dados a respeito da síndrome gripal de casos leves a moderados suspeitos de COVID-19. Para mais informações acesse a página do [OpenDataSUS](https://opendatasus.saude.gov.br/dataset/notificacoes-de-sindrome-gripal-api-elasticsearch).

-----
## Requisitos

- Flutter 2.10.4 • channel stable • https://github.com/flutter/flutter.git
- Tools • Dart 2.16.2 • DevTools 2.9.2
- [Síndrome Gripal API](https://github.com/sindrome-gripal/api) • Open and running on Heroku since  07/2022


## Pontos de Atenção

Esta aplicação conta com uma [API (em python)](https://github.com/sindrome-gripal/api) em que estão implementados gerenciamento de contas de usuário (criação de conta redefinição de senha) e as requisições à base de dados do **OpenDataSUS**. 
As Etapas de login, criação de usuário e redefinição de senha podem falhar na primeira vez visto que a API está rodando no Heroku e fica inatica com pouco atividade. Para o banco de dados segue o mesmo cuidado, é um [MongoDB na nuvem](https://www.mongodb.com/basics/clusters).

