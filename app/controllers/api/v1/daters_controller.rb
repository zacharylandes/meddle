class Api::V1::DatersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Dater.all
  end

  def show
    render json: Dater.find(params[:id])
  end

end
