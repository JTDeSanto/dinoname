class DinonamesController < ApplicationController
def index
    
   @dinoname = "#{:name}" + 'saurus'
    
  end

  def new
  
   
  end

  def create
    
  end

end

private
  def name_params
    require(:dinoname).permit(:name)
    
  end


end
