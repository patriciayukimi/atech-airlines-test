Quando("filtrar por data {string}") do |dataPartidaSelecionada|
    visit ''
    sleep 2
    find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[1]/div/div/md-datepicker/div[1]/input').set(dataPartidaSelecionada)
    sleep 1
    click_button 'Filtrar'
    
 end
    
  Então("eu verifico se a tabela exibe dados corretos") do
    dataPartida = find(:xpath, './/table/tbody/tr/td[1]')
    expect(dataPartida.text).to eql '4/10/2018 11:00 h'

    # bug sobre padrão de datas americano X brasileiro

  end