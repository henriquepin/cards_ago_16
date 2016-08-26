require 'rails_helper'

describe Card do
  describe 'descricao_amigavel' do
    it 'mostrar descricao do card com Preto e Black' do
      card = Card.new(front: "Preto", back: "Black")

      expect(card.descricao_amigavel).to eq 'PT: Preto => EN: Black'
    end

    it 'mostrar descricao do card com Amarelo e Yellow' do
      card = Card.new(front: "Amarelo", back: "Yellow")

      expect(card.descricao_amigavel).to eq 'PT: Amarelo => EN: Yellow'
    end
  end
end
