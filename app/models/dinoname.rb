class Dinoname 
  include ActiveModel::Model
  attr_accessor :name

  def formatted_name
    @first_name = self.name
    if /[aeiou]/.match(@first_name.last)
      @first_name = @first_name.chomp(@first_name.last)
    end

    "#{@first_name}#{suffix}"
  end

  private

  
  def suffix
    endings = ["saurus","ceratops","dactyl","adon", "alophus" ]
    if self.name.present?
      @y = endings.length
      @e = endings[rand(0..@y)] 
      return "#{@e}"
        
    end

    
  end
  
end
