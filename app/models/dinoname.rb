class Dinoname 
  include ActiveModel::Model
  attr_accessor :name


  def formatted_name
      @_formatted_name ||= generate_name
  end

  private

  def generate_name
    if self.name.present?
      @first_name = self.name
      @last_name = suffix
      
      # if first and last names end with vowel and 
      if /[aeiou]/ =~ @first_name.last  && /[aeiou]/ =~ @last_name[0]
        @first_name = @first_name.chomp(@first_name.last)

      elsif  /[aeiou]/.match(@first_name.last) == nil && /[aeiou]/.match( @last_name[0])== nil
         @last_name = 'a' + @last_name
      end
      @full_dino_name = @first_name + @last_name

    "#{@full_dino_name}"
    #{@first_name}#{@last_name}"
    
    else
      "Iforgotmyname-#{suffix}"
    end
    
  end
  
  def suffix
    endings = ["saurus","ceratops","dactyl","adon", "sauralophus","opteryx", "lophodon", "saurus rex", "cephalasaurus" ]
       "#{endings[rand(0.. endings.length - 1)] }"
        
    end

  
end
