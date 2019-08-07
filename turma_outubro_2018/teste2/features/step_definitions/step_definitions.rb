##### Cadastro
Dado("que ao acessar o site do Organinja") do
    visit("https://organinja.herokuapp.com/")
end

Quando("acionado a tela de login e o botão começe agora mesmo") do
   find("a[href='/login']").click
   find("a[href='/cadastro']").click
end

Então("Realizar um novo Cadastro") do
    find("#registerName").set "Tuany"
    find("input[placeholder='Seu email']").set "turma1@mailinator.com"
    find("input[placeholder='Sua senha']").set "123456"
    click_button("meteor-power-button-signup-meteor793")
    sleep 2
end

###########LOGIN

Então("Realizar Login") do
    find("a[href='/login']").click
    find("#email").set "turma1@mailinator.com"
    find("input[name='loginPassword']").set "123456"
    find("button[type='submit']").click
end
############## INCLUSAO CONTA##########################################

Dado("que ao acionar a conta bancaria") do                                        
    find_link("Contas Bancárias").click
    find("a[href='#modaAccount']").click
end                                                                               
                                                                                  
Quando("adicionar nova conta bancaria") do                                        
    select('Corrente', from: 'tpAccount')
    select('Itaú', from: 'bank')
    find("input[name='branch']").set "1234"
    find("input[name='account']").set "1516"
    @conta = find("input[name='account']").text
    find("input[name='balance']").set "100"
end                                                                               
                                                                                  
Então("conta adicionada com sucesso") do                                          
    find("button[type='submit']").click
    save_screenshot("data/1_nome_evidencia.png")
    find("#close").click
    expect(page).to have_content @conta
end                                                                               