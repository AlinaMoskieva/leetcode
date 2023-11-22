# • Write a volume calculator that takes three
# measurements in centimeters as input, which have to
# be converted to floats
# • It should return a volume in litres
# • Please follow good Object Oriented Programming
# principles

class VolumeCalculator
  attr_reader :height, :width, :length
  
  def initialize(height, width, length)
    @height = height.to_f
    @width = width.to_f
    @length = length.to_f
  end

  def calculate
    height * width * length / 1000.0
  end
end

calculator = VolumeCalculator.new(1, 2, 3)
calculator.calculate
