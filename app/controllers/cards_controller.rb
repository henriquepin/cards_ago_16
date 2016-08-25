class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    card = Card.new(card_parameters)
    card.save
    redirect_to card
  end

  def edit
  end

  def update
    @card.update(card_parameters)
    redirect_to @card
  end

  def destroy
    @card.destroy
    redirect_to root_url
  end

  private
  def card_parameters
    params.require(:card).permit(:front, :back)
  end

  def set_card
    @card = Card.find(params[:id])
  end
end
