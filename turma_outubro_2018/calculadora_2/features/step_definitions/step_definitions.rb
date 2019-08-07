Dado("que eu tenha  {int} e {int}") do |valor1, valor2|                              
   @soma = valor1 + valor2  
end                                                                             
                                                                                                                                                            
Então("eu realizo a soma e tenho o {int} obtido") do |resultado|                   
  expect(@soma).to eql resultado
end                                                                          
                                                                             
                                                                                                                                        