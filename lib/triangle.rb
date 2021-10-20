require 'pry'

class Triangle

  def initialize side_1, side_2, side_3
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  class TriangleError < StandardError
  end

  def side_length_test?
    @side_1 > 0 and @side_2 > 0 and @side_3 > 0
  end

  def inequality_test?
    @side_1 + @side_2 > @side_3 and @side_3 + @side_2 > @side_1 and @side_1 + @side_3 > @side_2
  end

  def kind 
    if side_length_test? and inequality_test?
      if @side_1 == @side_2 and @side_1 == @side_3
        :equilateral
      elsif @side_1 == @side_2 or @side_1 == @side_3 or @side_2 == @side_3
        :isosceles
      elsif @side_1 != @side_2 and @side_1 != @side_3 and @side_2 != @side_3
        :scalene
      end
    else
      begin raise TriangleError
      end
    end
  end
end
