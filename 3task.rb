# задание 3
# А вот задание потруднее: Если я прожил 943 миллиона секунд, то каков мой
# возраст? (Без учета висакосных годов) Добавить возможность задавать количество секунд.

#!/usr/bin/env ruby

class Age
  attr_accessor :age_in_seconds

  def initialize(age_in_seconds = 943000000)
    @age_in_seconds = age_in_seconds
  end

  def age_timer
      puts "Please enter the number of seconds of your life"
      @age_in_seconds = gets.chomp.to_i
      age_in_years = @age_in_seconds / (365.25 * 24 * 60 * 60) 
      puts "Your age is #{age_in_years.round} years"
  end
end

if __FILE__ == $0
  age = Age.new
  age.age_timer
end



