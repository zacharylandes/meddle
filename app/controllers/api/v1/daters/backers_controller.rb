class Api::V1::Daters::BackersController < ApplicationController

  def index
    # binding.pry
    render json: Dater.find(params[:id]).backers
  end

#don't need a show, just make a call to the actual backers endpoint if needed

end
