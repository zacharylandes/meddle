class Api::V1::Daters::BackersController < ApplicationController

  def index
    # binding.pry
    render json: Dater.find(params[:id]).backers
  end

  def update
    binding.pry
    current_dater.backers << Backer.find(params[:id])
  end

#don't need a show, just make a call to the actual backers endpoint if needed


  private


end
