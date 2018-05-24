class DinonamesController < ApplicationController
  def index
     
    
  end

  def create
      @dinoname = Dinoname.new(name_params)
  end

private
  def name_params
    params.require(:dinoname).permit(:name)
    
  end


end
