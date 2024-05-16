class NonPlayableCharactersController < ApplicationController
  def index
    non_playable_characters = NonPlayableCharacter.all

    render json: non_playable_characters
  end

  def show
    character = NonPlayableCharacter.find(params[:id])

    render json: character
  end

  def create
    character = NonPlayableCharacter.create!(character_params)
    render json: character, status: :created
  end

  def update
    character = NonPlayableCharacter.find(params[:id])
    character.update!(character_params)
    render json: character
  end

  def destroy
    NonPlayableCharacter.find(params[:id]).destroy
    head :no_content
  end
  
  private
  
  def character_params
    params.permit(:name, :strength, :dexterity, :wisdom, :intelligence, :charisma, :hit_points)
  end
end
