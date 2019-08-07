#language: pt

    Funcionalidade: Soma de Valores
        Somar os valores 

     @cenario1
     Cenário: Somar valores 3 + 3
        Quando eu somo 3 + 3
        Então o resultado é 6   
     
    @cenario2   
    Cenário: Somar valores 5 + 3
        Quando eu somo 5 + 3
        Então o resultado é 8   

    Cenário: Somar valores 1235 + 3
        Quando eu somo 1235 + 3
        Então o resultado é 1238   

    Cenário: Somar valores 15 + 3
        Quando eu somo 15 + 3
        Então o resultado é 18   
        
