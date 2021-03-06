class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
    if !@round.all_donesies?
      @card = @round.prepare_card
    end
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @round = current_user.rounds.create(deck_id: @deck.id)
    session[:round_id] = @round.id
    redirect_to @round
  end

end

