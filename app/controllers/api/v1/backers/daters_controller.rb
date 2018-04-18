class Api::V1::Backers::DatersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    #  
    render json: Backer.find(params[:id]).daters
  end


end
