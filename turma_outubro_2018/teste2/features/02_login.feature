#language: pt

    Funcionalidade: Logar no Sistema
        Realizar login no sistema

    Contexto: Logar no sistema
        Dado que ao acessar o site do Organinja
        Então Realizar Login

@inclusao
Cenario: Incluir Conta Bancaria
    Dado que ao acionar a conta bancaria  
    Quando adicionar nova conta bancaria
    Então conta adicionada com sucesso 