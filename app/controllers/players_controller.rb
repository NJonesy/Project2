class PlayersController < ApplicationController

  before_action :authenticate_team!
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def show
  end

  def new
    @player = Player.new
  end

  def edit
  end

  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to "/teams/#{current_team.id}", notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }

      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to "/teams/#{current_team.id}", notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to "/teams/#{current_team.id}", notice: 'Player was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_player
      @player = Player.find(params[:id])
    end

 
    def player_params
      params.require(:player).permit(:name, :position, :image, :team_id, :player_image)
    end
  end
