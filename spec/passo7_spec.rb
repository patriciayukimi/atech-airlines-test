describe 'Passo 7 - Filtros origem e destino' do

    it 'Passo 7 e 8' do 
        visit 'https://atech-airlines-ui-staging.herokuapp.com'
        
        #click_button 'Filtrar'
        # drop = find('.class=form-control ng-valid ng-dirty ng-valid-parse ng-touched')
        # drop.all('opti  on').sample
        
        # dataPartida = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[1]/div/div/md-datepicker/button')
        # click_button 'dataPartida'
        # fill_in '/html/body/div[1]/div[2]/div[1]/div[1]/div/div/md-datepicker/div/input', with: 'aaaa'
        
        origem = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[3]/select')
        origem.find('option', text:'Nova Iorque').select_option
        
        destino = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[4]/select')
        destino.find('option', text:'Guarulhos').select_option
        
        click_button 'Filtrar'

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
        
        page.find(:xpath, './/table/tbody/tr').click
        
        


        sleep 3


    end

end