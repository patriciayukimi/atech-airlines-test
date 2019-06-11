

describe 'Passo 2 - Filtro sem dados' do

    it 'Passo 2' do     
         visit 'https://atech-airlines-ui-staging.herokuapp.com'
         click_button 'Filtrar'
         sleep 3

         table = find(:xpath, '/html/body/div[1]/div[2]/div[2]/table')
         linhas = table.all(:css, 'tr').size
        expect(linhas-1).to eql 10
        
        #10 linhas com conteúdo.
         
        end    
    end