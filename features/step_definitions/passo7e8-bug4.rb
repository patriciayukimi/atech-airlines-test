Quando("filtrar cidade de partida igual {string} e cidade de destino igual {string}") do |cidadeOrigem, cidadeDestino|
    visit ''
    origem = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[3]/select')
    origem.find('option', text: cidadeOrigem).select_option
    destino = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[4]/select')
    destino.find('option', text: cidadeDestino).select_option
    click_button 'Filtrar'
  end
  
  Então("eu verifico se o sistema impede de selecionar as duas cidades iguais") do
    texto = find('#notice')
    expect(texto.text).to eql 'Cidade de origem selecionada igual a cidade de destino'
  end

  # mensagem de erro não esta mapeada, mas foi criado teste para inserir mensagem quando cidade destino for igual cidade origem