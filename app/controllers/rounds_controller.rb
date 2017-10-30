class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @round = current_user.rounds.create(deck_id: @deck.id)
    redirect_to @round
  end

end

