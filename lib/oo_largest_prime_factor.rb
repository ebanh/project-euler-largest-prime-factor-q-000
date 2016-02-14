# Enter your object-oriented solution here!
class LargestPrimeFactor
  def initialize(input)
    @input = input
  end

  def number
    prime_factors.max
  end

  def prime_factors
    (2..(Math.sqrt(@input))).select {|num| @input % num == 0 && factor(num)}
  end

  def factor(num)
    (2..(Math.sqrt(num))).select {|n| num % n == 0}.empty?
  end
end