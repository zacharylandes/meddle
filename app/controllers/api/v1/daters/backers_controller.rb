class Api::V1::Daters::BackersController < ApplicationController

  def index
    # binding.pry
    render json: Dater.find(params[:id]).backers
  end

  def create
    # binding.pry
    dater = Dater.find(params[:id])
    dater.backers << Backer.find(params[:backer_id])
    redirect_to '/dashboard'

  end

#don't need a show, just make a call to the actual backers endpoint if needed


  private

    def food_params
      params.require(:backer).permit(:id)
    end

end
