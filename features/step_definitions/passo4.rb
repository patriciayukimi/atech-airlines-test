Quando("acesso o link do sistema, filtrar por data") do
     visit''
     page.find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[1]/div/div/md-datepicker/button').click
     page.find(:xpath, '/html/body/div[3]/div[2]/md-calendar/div/md-calendar-month/div/md-virtual-repeat-container/div/div[2]/table/tbody[4]/tr[3]/td[2]/span').click
     click_button 'Filtrar'
   end

Então("eu verifico se o resultado retorna vazio") do
     table = find(:xpath, '/html/body/div[1]/div[2]/div[2]/table')
     linhas = table.all(:css, 'tr').size
     expect(linhas-1).to eql 0
     #exibe apenas o cabeçalho
  end