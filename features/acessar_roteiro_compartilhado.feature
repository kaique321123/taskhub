# language: pt
# encoding: utf-8

Funcionalidade: Acessar roteiro compartilhado
    Para não me perder no roteiro e nem precisar consultar o lìder do grupo

    # Cenário: (Feliz ou triste) Indica o comportamento esperado da funcionalidade
    # Dado: Estado atual do programa
    # E: Extensão de comandos
    # Quando: Ação que o usuário irá fazer
    # Então: Resultado esperado da ação

    Cenário: Acesso bem-sucedido ao roteiro com usuário logado
        Dado que sou um participante da viagem
        E o documento compartilhado existe
        Quando eu visito a página de perfil
        Quando eu clico no botão "Acessar plano"
        Então eu devo ser redirecionado ao documento compartilhado

    Cenário: Acesso bem-sucedido ao roteiro sem usuário logado
        Dado que sou um visitante
        E o documento compartilhado existe
        Quando eu acessar o link do documento
        Então eu devo ser redirecionado ao documento compartilhado