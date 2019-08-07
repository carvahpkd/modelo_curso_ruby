Dado("que eu esteja na página de compras") do
    visit 'http://automationpractice.com'
end
  
Quando("selecionar um produto na loja virtual") do
    find("input[id='search_query_top']").set "blouses"
    find("button[name='submit_search']").click
end
  
Quando("adicionar esse produto ao carrinho") do
    find("img[title='Blouse']").hover
    find("a[title='View']").click
    find("p[id='add_to_cart']").click
    find("a[class='btn btn-default button button-medium']").click
    assert_text('Blouse')
    find("a[class='button btn btn-default standard-checkout button-medium']").click
end
  
Quando("efetuar meu cadastro no site de compras") do
    find("input[id='email_create']").set "#{Faker::Name.first_name}@mailinator.com"
    find("button[id='SubmitCreate']").click

    find("label[for='id_gender1']").click();
    find("input[id='customer_firstname']").set Faker::Name.first_name 
    find("input[id='customer_lastname']").set Faker::Name.last_name
    find("input[id='passwd']").set "123456"
    find("div[id='uniform-days']").select ('21')
    find("div[id='uniform-months']").select ('April')
    find("div[id='uniform-years']").select ('1980')
    find("div[id='uniform-newsletter']").click
    find("input[id='address1']").set Faker::Address.street_name
    find("input[id='city']").set Faker::Address.city
    find("div[id='uniform-id_state']").select ('Florida') 
    find("input[id='postcode']").set "43199"
    find("div[id='uniform-id_country']").select ('United States')
    find("textarea[id='other']").set "Testes Campo Area"
    find("input[name='phone_mobile']").set Faker::PhoneNumber.cell_phone
    find("button[class='btn btn-default button button-medium']").click

    find("button[name='processAddress']").click
    sleep 2  

    execute_script('window.scroll(0,250);')
    within("p[class='checkbox']") do
        find("div[id='uniform-cgv']" ).click();
    end
    find("button[class='button btn btn-default standard-checkout button-medium']").click 
end
  
Quando("realizar o pagamento") do
    find("a[title='Pay by check.']").click
    find("button[class='button btn btn-default button-medium']").click
    sleep 2 
end
  
Então("eu finalizo o meu pedido com sucesso") do
    assert_text('Your order on My Store is complete.')
    execute_script('window.scroll(0,350);')
    save_screenshot("data/#{Time.now.strftime('%HH%MM%SS')}pedido.png")  

    find("a[title='Back to orders']").click
    assert_text('ORDER HISTORY')
    save_screenshot("data/#{Time.now.strftime('%HH%MM%SS')}pedido.png")
end