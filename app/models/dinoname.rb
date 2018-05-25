class Dinoname 
  include ActiveModel::Model
  attr_accessor :name


  def formatted_name
    if self.name.present?
      @first_name = self.name
      @last_name = suffix
      if /[aeiou]/.match(@first_name.last) && /[aeiou]/.match(@last_name[0])
        @first_name = @first_name.chomp(@first_name.last)

      elsif  /[aeiou]/.match(@first_name.last) == nil && /[aeiou]/.match( @last_name[0])== nil
         @last_name = 'a' + @last_name
      end
    
    "#{@first_name}#{@last_name}"
    
    else
      "Iforgotmyname-#{suffix}"
    end
  end

  private

  
  def suffix
    endings = ["saurus","ceratops","dactyl","adon", "alophus","opteryx", "ophodon", "saurus rex", "cephalasaurus" ]
      @y = endings.length - 1
      return "#{endings[rand(0..@y)] }"
        
    end
  
end
