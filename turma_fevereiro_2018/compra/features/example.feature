#language: pt

Funcionalidade: Comprar Geladeira
    Eu como usuário desejo comprar uma Geladeira

    Cenário: Comprar Geladeira
        Dado acessar o site do Walmart
        Quando pesquisar por Geladeira
        E adicionar ao carrinho
        Então minha compra é finalizada com sucesso