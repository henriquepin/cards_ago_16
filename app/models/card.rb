class Card < ApplicationRecord

  def descricao_amigavel
    "Pt: #{front} -> Eng: #{back}"
  end
end
