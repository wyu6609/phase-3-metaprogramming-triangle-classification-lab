require 'pry'
class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    if (@a <= 0 || @b <= 0 || @c <= 0)
      raise TriangleError
    elsif (@a + @b <= @c || @a + @c <= @b || @b + @c <= @a)
      raise TriangleError
    end
  end

  def kind
    if (@a == @b && @b == @c)
      return :equilateral
    elsif (@a == @b || @a == @c || @b == @c)
      return :isosceles
    elsif (@a != @b && @a != @c && @b != @c)
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end
