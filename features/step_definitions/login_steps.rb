

Dado("que eu acesso a página principal") do
    visit 'https://mark7.herokuapp.com/login'
  end
  
Quando("faço o login com {string} e {string}") do |email, senha|
  @email = email
    find('input[name=email]').set email
    find('input[name=password]').set senha
    click_button 'Login'
  end
  
Então("e devo autenticar com sucesso") do
    expect(page).to have_content @email
  end
  
Então("devo ver  seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
  end