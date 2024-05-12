class CharactersController < ApplicationController
  def index
    characters = Character.all

    render json: characters
  end

  def show
    character = Character.find(params[:id])

    render json: character
  end

  def create
    character = Character.create!(character_params)
    render json: character, status: :created
  end

  def update
    character = Character.find(params[:id])
    character.update!(character_params)
    render json: character
  end

  def destroy
    Character.find(params[:id]).destroy
    head :no_content
  end
  
  private
  
  def character_params
    params.permit(:name, :background_story)
  end
end
