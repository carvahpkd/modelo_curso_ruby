#language: pt

    Funcionalidade: Preencher Formulário e Limpar campos
        Usuário acessa o site preenche o formulário e limpa os campos
        
@cenario1
Cenário: Preencher Formulário e limpar campos
    Dado usuário acessar ao site Vilas Boas
    Quando o usuário preencher o formulário Fields
    Então o usuário aciona o botão Reset Fields
        
@cenario2
Cenário: Selecionar Buttons e Resetar
    Dado usuário acessar ao site Vilas Boas
    Quando o usuário aciona botões do Painel Buttons e seleciona itens
    Então o usuário aciona o botão Reset Buttons
            