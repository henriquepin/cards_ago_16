class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def show
    @comment = Comment.new
  end

  def index
    @cards = Card.where(published:true)
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_parameters)
    if @card.save
      redirect_to @card
    else
      flash[:alert] = 'Por favor, preencher Portugues'
      render :new
    end
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
    params.require(:card).permit(:front, :back, :author)
  end

  def set_card
    @card = Card.find(params[:id])
  end
end
