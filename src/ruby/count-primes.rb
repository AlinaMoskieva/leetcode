# https://leetcode.com/problems/count-primes/
# 204. Count Primes
# Medium
# Given an integer n, return the number of prime numbers that are strictly less than n.

 

# Example 1:

# Input: n = 10
# Output: 4
# Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
# Example 2:

# Input: n = 0
# Output: 0
# Example 3:

# Input: n = 1
# Output: 0

# Note: A prime number is defined as a natural number greater than 1 and is divisible by only 1 and itself.

# @param {Integer} n
# @return {Integer}

def count_primes_algorithm(n)
  return 0 if n < 2

  is_prime = Array.new(n + 1, true)
  is_prime[0] = is_prime[1] = false
  is_prime[2] = true

  (3..Math.sqrt(n).to_i).step(2).each do |i|
    next unless is_prime[i]

    (i * i..n).step(2 * i).each do |multiple|
      is_prime[multiple] = false
    end
  end

  is_prime.count(true)
end

require "prime"
def count_primes(n)
  Prime.each(n).count
end
