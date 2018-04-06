class Api::V1::Backers::DatersController < ApplicationController

  def index
    # binding.pry
    render json: Backer.find(params[:id]).daters
  end

#don't need a show, just make a call to the actual backers endpoint if needed

end
