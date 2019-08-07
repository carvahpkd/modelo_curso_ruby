Quando("eu somo {int} + {int}") do |valor1, valor2|
   @soma = valor1 + valor2 
end
  
Então("obtenho o {int}") do |resultado|
    expect(@soma).to eql resultado
end