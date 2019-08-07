Dado("Acessar a url {string}") do |site|
    visit(site)
end
  
Quando("Preencher os campos do formulário") do
    fill_in("first_name", with: "Gabriela")
    fill_in("mid_name", with: "Souza")
    fill_in("last_name", with: "Silva")
    fill_in("age", with: "28")
    fill_in("email", with: "gabrielasilva@scopus.com.br")
    fill_in("job", with: "Analista")
    fill_in("gender", with: "Indefinido")
      
end
  
Então("Clico no botão Reset Fields os campos serão limpos") do
click_button ("reset_fields")
expect(page).to have_no_content("Gabriela")
end