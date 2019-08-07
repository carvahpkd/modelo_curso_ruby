Dado("usuário acessar ao site Vilas Boas") do
  visit("http://vilasboasit.com/tests.html")
end

Quando("o usuário preencher o formulário Fields") do
  fill_in("first_name", with: "Talitha")
  fill_in("mid_name", with: "teste")
  fill_in("last_name", with: "Jurado")
  fill_in("age", with: "29")
  fill_in("email", with: "talitha@hotmail.com")
  fill_in("job", with: "Analista")
  fill_in("gender", with: "Feminino")
end

Então("o usuário aciona o botão Reset Fields") do
    click_button("reset_fields")
end

Quando("o usuário aciona botões do Painel Buttons e seleciona itens") do
    click_button("btn_one")
    click_button("btn_two")
    click_button("btn_three")
    click_button("btn_link")
    select('ExampleThree', from: 'select_box')
    check ("opt_one")
    check ("opt_one")
    check ("opt_two")
    check ("opt_three") 
end

Então("o usuário aciona o botão Reset Buttons") do
    click_button("reset_buttons") 
end