class GuessesController < ApplicationController

  def create
    @card = Card.find(params[:card_id])
    @guess = Guess.new(card_id: @card.id, round_id: session[:round_id])
    if params[:answer].downcase == @card.answer.downcase
      @guess.is_correct = true
    end
    @guess.save
    redirect_to "/rounds/#{session[:round_id]}"
  end

end
