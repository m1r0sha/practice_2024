# задание 3
#Нужно написать функцию.в качестве аргументов передаются число и  слово "канал", нужно просклонять  его в зависимости от числа стоящего перед ним и вернуть строку, например : 1 канал, 2 канала, 7 каналов. Для усложнения  можно добавить случаи для слов "камера" и "рубль".

#!/usr/bin/env ruby

def word_func()
  puts "Enter number"
  number = gets.chomp.to_i
  puts "Enter word"
  word = gets.chomp

  case word
  when "канал"
    return case number % 10
           when 1
             puts "#{number} #{word}" 
           when 2, 3, 4
             puts "#{number} #{word}ы"
           else
             puts "#{number} #{word}ов"
           end
  when "камера"
    return case number % 10
           when 1
             puts "#{number} #{word}а"
           when 2, 3, 4
             puts "#{number} #{word}ы"
           else
             puts "#{number} #{word}"
           end
  when "рубль"
    return case number % 10
           when 1
             puts "#{number} #{word}"
           when 2, 3, 4
             puts "#{number} #{word}я"
           else
             puts "#{number} #{word}ей"
           end
  else
    puts "Неизвестное слово"
  end
end

if __FILE__ == $0
  word_func
end