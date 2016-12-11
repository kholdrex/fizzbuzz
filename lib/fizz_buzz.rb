require 'singleton'

class FizzBuzz
  AMOUNT_OF_ITERATIONS = 100
  MAX_ITERATIONS = 5000
  DEFAULT = { '15' => 'FizzBuzz', '3' => 'Fizz', '5' => 'Buzz' } # 3 * 5 = 15 - dividable by 3 and 5

  include Singleton

  def call(n = AMOUNT_OF_ITERATIONS)
    return if !n.is_a?(Integer) || n.zero?

    amount_of_iterations = n > MAX_ITERATIONS ? MAX_ITERATIONS : n
    process([], 1, amount_of_iterations)
  end

  private

  def process(current_result, current_iter, max_iter)
    return current_result if current_iter > max_iter

    new_value = value_or_number(current_iter)
    process(current_result.push(new_value), current_iter + 1, max_iter)
  end

  def dividable?(x, y)
    (x % y) == 0
  end

  def value_or_number(iter)
    DEFAULT.each do |k, v|
      return v if dividable?(iter, k.to_i)
    end
    iter
  end
end
