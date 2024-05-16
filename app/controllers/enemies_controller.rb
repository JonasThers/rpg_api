class EnemiesController < ApplicationController
  def index
    enemies = Enemy.all

    render json: enemies
  end

  def show
    enemy = Enemy.find(params[:id])

    render json: enemy
  end

  def create
    enemy = Enemy.create!(enemy_params)
    render json: enemy, status: :created
  end

  def update
    enemy = Enemy.find(params[:id])
    enemy.update!(enemy_params)
    render json: enemy
  end

  def destroy
    Enemy.find(params[:id]).destroy
    head :no_content
  end
  
  private
  
  def enemy_params
    params.permit(:name, :strength, :dexterity, :wisdom, :intelligence, :charisma, :hit_points)
  end

  def inflict_damage

  end
end
