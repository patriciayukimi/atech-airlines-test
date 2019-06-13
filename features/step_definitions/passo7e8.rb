Quando("acesso o link do sistema, filtro por cidade origem e cidade destino, em seguida clico em filtrar") do
    visit ''
    origem = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[3]/select')
    origem.find('option', text:'Nova Iorque').select_option    
    destino = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[4]/select')
    destino.find('option', text:'Guarulhos').select_option

    click_button 'Filtrar'
end

Então("eu verifico se o resutado retorna os dados corretos") do
    dataPartida = find(:xpath, './/table/tbody/tr/td[1]')
    expect(dataPartida.text).to eql '01/04/2018 6:00 h'

    dataChegada = find(:xpath, './/table/tbody/tr/td[2]')
    expect(dataChegada.text).to eql '02/04/2018 3:00 h'

    origem = find(:xpath, './/table/tbody/tr/td[3]')
    expect(origem.text).to eql 'Nova Iorque, Estados Unidos'

    destino = find(:xpath, './/table/tbody/tr/td[4]')
    expect(destino.text).to eql 'Guarulhos, Brasil'

    status = find(:xpath, './/table/tbody/tr/td[5]')
    expect(status.text).to eql 'Atrasado'

    find(:xpath, './/table/tbody/tr/td[5]').click

   aeronave = find(:xpath, '//table/tbody/tr[2]/td/div[1]/div[1]/h4')
   expect(aeronave.text).to eql 'Aeronave'
end