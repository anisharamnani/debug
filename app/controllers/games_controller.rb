class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit 
    @game = Game.find(params[:id])
  end 

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(params[:game])
    @game.save
    redirect_to @game
  end

  def update 
    @game = Game.find(params[:id])
  end 

  def destroy
    @game = Game.find(params[:id])
    @game.destroy 
    redirect_to @game 
  end 

end
