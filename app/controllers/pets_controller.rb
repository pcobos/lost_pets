class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    @pets = Pet.all 
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
