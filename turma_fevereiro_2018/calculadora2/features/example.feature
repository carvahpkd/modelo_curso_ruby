#language: pt

    Funcionalidade: Soma de Valores
    Eu como usuário desejo somar Valores

Esquema do Cenário: Somar valores
    Quando eu somo <valor1> + <valor2>
    Então obtenho o <resultado>

    Exemplos:
    |valor1|valor2|resultado|
    |2     |5     |7        |
    |8     |7     |15       |
    |1     |2     |3        |
    |4     |3     |7        |
    |1     |1     |2        |
    |2     |2     |4        |