# задание 1
# Есть массив [Иванов, Дилер Петров, Александров, Дилер Бодрый], нужно отсортировать массив по алфавиту, но дилеры должны идти в конце списка. Тогда правильный вывод для текущего примера будет 
# [Александров, Иванов, Дилер Бодрый, Дилер Петров]. Программа должна работать для любой размерности массива. Все имена вводятся на русском языке

#!/usr/bin/env ruby

class Names
  def sort_names(names)
    regular_names = names.select { |name| !name.start_with?("Дилер ") }
    dealer_names = names.select { |name| name.start_with?("Дилер ") }
    sorted_regular_names = regular_names.sort
    sorted_dealer_names = dealer_names.sort
    sorted_names = sorted_regular_names + sorted_dealer_names
    puts sorted_names
  end
end

if __FILE__ == $0
  names = ["Иванов", "Дилер Петров", "Александров", "Дилер Бодрый"]
  sorter = Names.new
  sorter.sort_names(names)
end

