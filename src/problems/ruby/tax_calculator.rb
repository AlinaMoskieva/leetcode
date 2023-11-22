# • Write a tax calculator that takes two arguments
# • The first is euro cents which has to be converted to
# an integer
# • The second is a tax rate percentage which has to be
# converted to a float
# • Calculate the final amount in cents, after tax has
# been added. For example: an apple costs 1$, how much
# does it cost after the VAT of 10% has been applied?
# 1.10$
# • The result should be the smallest integer greater
# than or equal to the calculated final amount
# • Please follow good Object Oriented Programming
# principles

class TaxCalculator
  def calculate(cents, rate)
    (cents.to_i * (100 + rate) / 100.0).to_i
  end
end

calculator = TaxCalculator.new
calculator.calculate(100, 10)


class TaxCalculator
  attr_reader :price, :rate
  
  def initialize(price, rate)
    @price = price
    @rate = rate
  end

  def calculate
    (price.to_i * (100 + rate) / 100.0).to_i
  end
end

calculator = TaxCalculator.new(100, 10)
calculator.calculate
