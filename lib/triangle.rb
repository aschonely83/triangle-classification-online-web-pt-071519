class Triangle
  attr_reader :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end 
  
  def kind
    if 
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end  
  end
  
  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|side| real_triangle << false if side <= 0}
    raise TriangleError if real_triangle.include?(false)
    end
  end
  
  class TriangleError
  end  

