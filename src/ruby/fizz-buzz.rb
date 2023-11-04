# # https://leetcode.com/problems/fizz-buzz/

# 412. Fizz Buzz
# Easy
# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.
 

# Example 1:

# Input: n = 3
# Output: ["1","2","Fizz"]
# Example 2:

# Input: n = 5
# Output: ["1","2","Fizz","4","Buzz"]
# Example 3:

# Input: n = 15
# Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
# @param {Integer} n
# @return {String[]}

FIZZBUZZ = "FizzBuzz".freeze
FIZZ = "Fizz".freeze
BUZZ = "Buzz".freeze

def fizz_buzz(n)
  mod15 = -> (number) { number % 15 == 0 }
  mod5 = -> (number) { number % 5 == 0 }
  mod3 = -> (number) { number % 3 == 0 }
  
  (1..n).map do |number|
    case number
    when mod15
      FIZZBUZZ
    when mod3
      FIZZ
    when mod5
      BUZZ
    else 
      number.to_s
    end
  end
end

puts fizz_buzz(20)