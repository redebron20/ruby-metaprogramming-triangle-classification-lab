class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    raise TriangleError if [side_a, side_b, side_c].include?(0) || [side_a, side_b, side_c].any?(&:negative?)
    raise TriangleError if side_a + side_b <= side_c || side_b + side_c <= side_a || side_a + side_c <= side_b
    return :equilateral if side_a == side_b && side_b == side_c && side_a == side_c
    return :isosceles if side_a == side_b || side_b == side_c || side_a == side_c 
    return :scalene
  end

  class TriangleError < StandardError
  end

end
