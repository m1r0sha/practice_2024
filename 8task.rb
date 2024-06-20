# задание 3
#Нужно написать функцию.в качестве аргументов передаются число и  слово "канал", нужно просклонять  его в зависимости от числа стоящего перед ним и вернуть строку, например : 1 канал, 2 канала, 7 каналов. Для усложнения  можно добавить случаи для слов "камера" и "рубль".

#!/usr/bin/env ruby

def hashes_sort(number, word)
  case word
  when "канал"
    return case number % 10
           when 1, 2, 3, 4
             number == 1 ? "#{number} #{word}" : "#{number} #{word}а"
           else
             "#{number} #{word}ов"
           end
  when "камера"
    return case number % 10
           when 1
             "#{number} #{word}а"
           when 2, 3, 4
             "#{number} #{word}ы"
           else
             "#{number} #{word}"
           end
  when "рубль"
    return case number % 10
           when 1
             "#{number} #{word}"
           when 2, 3, 4
             "#{number} #{word}я"
           else
             "#{number} #{word}ей"
           end
  else
    return "Неизвестное слово"
  end
end
