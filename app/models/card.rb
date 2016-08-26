class Card < ApplicationRecord
  has_many :comments
  validates :front,  presence: true
  validates :author, presence: true
  validates :back, presence: true

  def descricao_amigavel
    "PT: #{front} => EN: #{back}"
  end
end
