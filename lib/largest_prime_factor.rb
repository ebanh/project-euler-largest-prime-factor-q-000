# Enter your procedural solution here!

def largest_prime_factor(input)
  prime_factors(input).max
end

def prime_factors(input)
  (2..(Math.sqrt(input))).select {|num| input % num == 0 && factor(num)}
end

def factor(num)
  (2..(Math.sqrt(num))).select {|n| num % n == 0}.empty?
end
