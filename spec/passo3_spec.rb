
describe 'Filtro Data de Partida' do

    it 'Passo 3' do     
         visit 'https://atech-airlines-ui-staging.herokuapp.com'
         
         
         #page.find(:class, 'md-datepicker-input').click
         #dataPartida = find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[1]/div/div/md-datepicker/div/input')
         #click_button 'dataPartida'
         #page.find(:class, 'md-datepicker-input-container md-datepicker-focused').click
         #fill_in page.find(:class, 'md-datepicker-input-container md-datepicker-focused').click, with: '01/04/2018'
         
         page.find(:xpath, '/html/body/div[1]/div[2]/div[1]/div[1]/div/div/md-datepicker/button').click
         page.find(:xpath, '/html/body/div[3]/div[2]/md-calendar/div/md-calendar-month/div/md-virtual-repeat-container/div/div[2]/table/tbody[4]/tr[3]/td[2]/span').click
         
         click_button 'Filtrar'
         table = find(:xpath, '/html/body/div[1]/div[2]/div[2]/table')
         linhas = table.all(:css, 'tr').size
        expect(linhas-1).to eql 0
    end

   # it 'Data válida' do
   #     visit 'https://atech-airlines-ui-staging.herokuapp.com'
        #fill_in :placeholder => "Entre com a data", :with => "Text"
   #     fill_in :class => "md-datepicker-input-container md-datepicker-focused", :with => "aaaaa"
   #     sleep 3
        
   #     click_button 'Filtrar'
   #     end
    end 