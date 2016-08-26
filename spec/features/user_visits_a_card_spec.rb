require 'rails_helper'

feature 'User visits a card' do
  scenario 'successfully' do
    #setup - criando card
    card = Card.create(front: 'Preto', back: 'Black')
    #scenario
    visit card_path(card)
    #expectations
    expect(page).to have_content 'PT: Preto => EN: Black'
  end
end
