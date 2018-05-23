class DinosController < ApplicationController
  def index
    @dinos = Dino.all
    
  end

  def new
    @dino = Dino.new
    
  end

  def create
    @dino = Dino.create(dino_params)
    redirect_to root_path
  end


private
def dino_params
  params.require(:dino).permit(:name, :description, :diet)
  
end

end
