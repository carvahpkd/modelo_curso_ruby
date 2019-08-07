Dado("acessar o site do Walmart") do                                         
    visit("https://www.pontofrio.com.br")
end                                                                          
                                                                               
Quando("pesquisar por Geladeira") do                                         
    fill_in("suggestion-search", with: "playstation")
    find("button[class='search-icon-topbar wm-icon icon-search-topbar']").click
    find("img[src='//static.wmobjects.com.br/imgres/arquivos/ids/10862219-220-220/console-playstation-4-ps4-slim-1tb-com-1-controle-dualshock-4.jpg']").click   
end                                                                          
                                                                               
Quando("adicionar ao carrinho") do  
    find("span[class='btn-label']").click
    find("span[class='cart-icon']").click                                         
end                                                                          
                                                                               
Então("minha compra é finalizada com sucesso") do    
    find("button[class='btn btn-success buy-button finish-btn']").click                    
end                                                                          