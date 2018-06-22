class Dino < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  
  def new
    @dino = Dino.new
    
  end




end
