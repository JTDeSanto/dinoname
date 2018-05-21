class DinosController < ApplicationController
  def index
    @dinos = Dino.all
    
  end

  def new
    @dino = Dino.new
    
  end

  def create
    @dino = dinos.create(dino_params)
  end


private
def dino_params
  params.require(:dino).permit(:name, :description, :diet)
  
end

end
