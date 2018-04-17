class Api::V1::BackersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Backer.all
  end

  def show
    render json: Backer.find(params[:id])
  end 

end
