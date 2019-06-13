Quando("acesso o link do sistema") do
    visit ''
    @title = page.title
  end
 
 Então("eu verifico se a página esta correta") do
    expect(page).to have_current_path('https://atech-airlines-ui-staging.herokuapp.com/', url: true)
    expect(page.title).to eql 'Atech Airlines'
    page.all(:css, '.table')
  end