require 'rails_helper'

feature 'User creates a card' do
  scenario 'successfully' do
    visit new_card_path

    fill_in 'Portugues', with: 'Teste'
    fill_in 'Ingles', with: 'Test'
    fill_in 'Autor', with: 'Henrique'
    click_on 'Enviar'

    expect(page).to have_content 'Teste'
    expect(page).to have_content 'Test'
    expect(page).to have_content 'Enviado por: Henrique'
  end
  scenario 'unsuccessfully' do
    visit new_card_path

    click_on 'Enviar'

    expect(page).to have_content 'Por favor, preencher Portugues'
  end
end
