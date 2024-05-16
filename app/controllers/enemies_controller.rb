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

  def inflict_damage
    enemy = Enemy.find(params[:id])

    enemy.hit_points -= params[:damage].to_i
    enemy.save!
    
    if enemy.hit_points <= 0
      enemy_dies(enemy)
    end

    render json: enemy
  end
  
  private
  
  def enemy_params
    params.permit(:name, :strength, :dexterity, :wisdom, :intelligence, :charisma, :hit_points)
  end

  def enemy_dies(enemy)
    enemy.is_alive = false

    enemy.save!
  end
end
