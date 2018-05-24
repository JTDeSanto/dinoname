class Dinoname 
  include ActiveModel::Model
  attr_accessor :name

  def formatted_name
    @first_name = self.name
    @last_name = suffix
    if /[aeiou]/.match(@first_name.last) && /[aeiou]/.match(@last_name[0])
      @first_name = @first_name.chomp(@first_name.last)
    end
    
    
    "#{@first_name}#{@last_name}"
  end

  private

  
  def suffix
    endings = ["saurus","ceratops","dactyl","adon", "alophus" ]
    if self.name.present?
      @y = endings.length - 1
      return "#{endings[rand(0..@y)] }"
        
    end

    
  end
  
end
