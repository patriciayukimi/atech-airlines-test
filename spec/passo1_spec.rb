

describe 'Acesso ao sistema' do

   it 'Passo 1' do     
        visit 'https://atech-airlines-ui-staging.herokuapp.com'
        expect(page.title).to eql 'Atech Airlines'
        end
   end