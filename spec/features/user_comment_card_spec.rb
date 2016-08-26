require 'rails_helper'

feature 'User comments a card' do
  scenario 'successfully' do
    #setup
    card = Card.create(front: 'Livro', back: 'Book', author: 'Henrique')
    #steps
    visit card_path(card)
    fill_in 'Autor', with: 'Henrique'
    fill_in 'Comentario', with: 'Obrigado por esse card'
    click_on 'Enviar Comentario'
    #expectations
    expect(page).to have_content 'PT: Livro => EN: Book'
    expect(page).to have_content 'Henrique comentou:'
    expect(page).to have_content 'Obrigado por esse card'
  end
end
