# Protótipo

Link de acesso: https://www.figma.com/file/LyUczkfATF9fDMFnISoYbr/FitWorks?node-id=3%3A8

# Basic Architecture

Flutter Basic Application Architecture.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



```

lib       
├── assets........................................| Arquivos estáticos
│   ├── i18n......................................| Pacote de idiomas
│   │   ├── en_US.json 
│   │   └── pt_BR.json 
│   └── images....................................| Imagens (sempre no formato .svg)
│       └── dash.svg   
└── src...........................................| Raíz
    ├── app_module.dart
    ├── app_widget.dart
    ├── features..................................| Funcionalidades da aplicação
    │   ├── auth..................................| FEATURE - pagina de autenticação
    │   │   ├── auth_module.dart
    │   │   ├── data
    │   │   │   ├── dto...........................| Mapeamento de dados para repository (padrão de dados para entrada e saída)
    │   │   │   │   └── user_dto.dart
    │   │   │   └── repository....................| Comunicação externa
    │   │   │       └── login_repository.dart
    │   │   ├── domain
    │   │   │   ├── model.........................| Mapeamento de dados para a parte interna da aplicação
    │   │   │   │   └── user.dart
    │   │   │   ├── repository....................| Lógica/Criação das estruturas de lógica de negócio
    │   │   │   │   └── login_interface.dart
    │   │   │   └── usecase.......................| Validação e formatação de dados para serem apresentados para o usuário
    │   │   │       └── login_usecase.dart
    │   │   └── presentation......................| Telas de apresentação da feature auth
    │   │       ├── view
    │   │       │   ├── page
    │   │       │   │   └── login_page.dart
    │   │       │   └── widget....................| Componentes das telas da feature auth
    │   │       └── viewmodel.....................| Camada de recepção dos dados (entrada do usuário)
    │   │           ├── login_viewmodel.dart
    │   │           └── login_viewmodel.g.dart
    │   ├── onboarding............................| Telas iniciais antes de fazer login
    │   │   └── presentation
    │   │       ├── page
    │   │       └── widget
    │   └── sign_up...............................| FEATURE - pagina para criar conta
    └── main.dart.................................| Entrypoint - primeiro arquivo a ser chamado

```
