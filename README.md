# HORTIFLUTTER
Aplicação Mobile em flutter.  
Usando clean architecture para estruturar o projeto.

## Requerimentos
- [Flutter (2.5.1)](https://flutter.dev/docs/get-started/install)
- [Dart 2.14.2](https://webdev.dartlang.org/tools/sdk#install)


## Arquitetura
- [Modular](https://github.com/Flutterando/modular)
- [rxNotifier](https://pub.dev/packages/rx_notifier)


## Workflow
- [Slidy CLI](https://github.com/Flutterando/slidy)

## Estrutura

    root
    ├── lib
    |   ├── app
    |   |   ├── modules
    |   |   |    └── module ------------------------- (Módulo da aplicação)
    |   |   |           ├── domain ------------------ (Camada que hospeda regras de negocio)
    |   |   |           |    ├── entities ----------- (Regras de negócio corporativas)
    |   |   |           |    ├── params ------------- (Parâmetros de APIs)
    |   |   |           |    ├── i_repositories ----- (Interfaces dos repositories)
    |   |   |           |    └── usecases ----------- (Regras de negócio da aplicação)
    |   |   |           ├── external ---------------- (Camada que hospeda acessos externos)
    |   |   |           |    ├── datasources -------- (Implementação dos datasources)
    |   |   |           |    └── mapper ------------- (Serialização das entidades)
    |   |   |           ├── infra ------------------- (Camada de suporte ao domain)
    |   |   |           |    ├── i_datasources ------ (Interfaces dos datasources)
    |   |   |           |    └── repositories ------- (Implementação dos repositories)
    |   |   |           └── presenter --------------- (Camada de I/O e interações da aplicação com o usuário)
    |   |   └── shared ------------------------------ (Arquivos compartilhados em todo o projeto)
    |   |        ├── components --------------------- (Componentes compartilhados)
    |   |        ├── contracts ---------------------- (Interfaces compartilhadas)
    |   |        ├── errors ------------------------- (Implementação de erros)
    |   |        ├── services ----------------------- (Configurações de conexão)
    |   |        ├── storage ------------------------ (Armazenamento local de dados)
    |   |        ├── theme -------------------------- (Configurações do tema da aplicação)
    |   |        └── utils -------------------------- (Arquivos úteis)
    ├── resources ----------------------------------- (Recursos da aplicação)
    |   ├── icons ----------------------------------- (Ícones)
    |   ├── images ---------------------------------- (Imagens)
    |   └── languages ------------------------------- (Arquivos de internacionalização)
    ├── test ---------------------------------------- (Testes unitários)
    |   └── app
    |       └── modules
    |            └── module
    |                   ├── domain
    |                   |    └── usecases ----------- (Testes da implementação dos usecases)
    |                   ├── external
    |                   |    └── datasources -------- (Testes da implementação dos datasources)
    |                   └── infra
    |                        └── repositories ------- (Testes da implementação dos repositories)
    ├── README.md
    └── ...------------------------------------------ (Outros arquivos de configuração)
