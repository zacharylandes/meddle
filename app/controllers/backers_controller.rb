class BackersController < ApplicationController

  def show
    @backer = Backer.find(params[:id])

  end

end
