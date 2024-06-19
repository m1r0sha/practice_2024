# задание 4
# Входной поток содержит набор целых чисел Ai (0 ≤ Ai ≤ 1018), отделённых друг от друга произвольным количеством пробелов и переводов строк. Размер входного потока не превышает 256 КБ.
# Для каждого числа Ai, начиная с последнего и заканчивая первым, в отдельной строке вывести его квадратный корень не менее чем с четырьмя знаками после десятичной точки.

#!/usr/bin/env ruby

class Square

  def square_math(input)
      puts "Please enter numbers to calcuate their sqrt"
      numbers = input.split.map(&:to_i)
      square_roots = numbers.reverse.map { |number| Math.sqrt(number) }
      square_roots.map { |square_root| "%.4f" % square_root }
      puts square_roots
  end
end

if __FILE__ == $0
  sq = Square.new
  input = STDIN.read
  sq.square_math(input)
end


