class EnemiesController < ApplicationController
  def index
    enemies = Enemy.all

    render json: enemies
  end

  def show
    character = Enemy.find(params[:id])

    render json: character
  end

  def create
    character = Enemy.create!(character_params)
    render json: character, status: :created
  end

  def update
    character = Enemy.find(params[:id])
    character.update!(character_params)
    render json: character
  end

  def destroy
    Enemy.find(params[:id]).destroy
    head :no_content
  end
  
  private
  
  def character_params
    params.permit(:name, :strength, :dexterity, :wisdom, :intelligence, :charisma, :hit_points)
  end
end
