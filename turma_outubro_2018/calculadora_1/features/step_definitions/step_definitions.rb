Quando("eu somo {int} + {int}") do |v1, v2|
  @soma = v1 + v2
end

Então("o resultado é {int}") do |resultado|
 expect(@soma).to eql resultado 
end

