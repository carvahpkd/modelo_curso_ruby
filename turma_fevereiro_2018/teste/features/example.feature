#language: pt
Funcionalidade: Formulário
Preencher e limpar Formulário

@preencher
Cenário: Preencher o formulário e limpar os campos
Dado Acessar a url "http://vilasboasit.com/tests.html"
Quando Preencher os campos do formulário 
Então Clico no botão Reset Fields os campos serão limpos
