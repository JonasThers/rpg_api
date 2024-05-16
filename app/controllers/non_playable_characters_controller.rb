class NonPlayableCharactersController < ApplicationController
  def index
    non_playable_characters = NonPlayableCharacter.all

    render json: non_playable_characters
  end

  def show
    non_playable_character = NonPlayableCharacter.find(params[:id])

    render json: non_playable_character
  end

  def create
    non_playable_character = NonPlayableCharacter.create!(non_playable_character_params)
    render json: non_playable_character, status: :created
  end

  def update
    non_playable_character = NonPlayableCharacter.find(params[:id])
    non_playable_character.update!(non_playable_character_params)
    render json: non_playable_character
  end

  def destroy
    NonPlayableCharacter.find(params[:id]).destroy
    head :no_content
  end
  
  private
  
  def non_playable_character_params
    params.permit(:name, :strength, :dexterity, :wisdom, :intelligence, :charisma, :hit_points)
  end
end
