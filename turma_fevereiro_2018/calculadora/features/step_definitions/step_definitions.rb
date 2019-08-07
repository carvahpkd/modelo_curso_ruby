Quando("eu somo {int} + {int}") do |val1, val2|
    @soma = val1 + val2
end
  
Então("o resultado é {int}") do |resultado|
  expect(@soma).to eql resultado
end

Quando("eu subtraio {int} - {int}") do |val1, val2|
    @subtraio = val1 - val2
end

Então("a subtração é {int}") do |subtracao|
  expect(@subtraio).to eql subtracao
end  