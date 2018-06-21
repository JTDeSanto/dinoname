class DinonamesController < ApplicationController
  def index
     @dinoname = Dinoname.new(name_params)
    
  end

  def create
      @dinoname = Dinoname.new(name_params)
  end

private
  def name_params
    params.require(:dinoname).permit(:name)
    
  end


end
