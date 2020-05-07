class Triangle
  
  attr_accessor :base, :height, :hypotenuse, :equilateral, :isosceles, :scalene
  
  def initialize(base, height, hypotenuse)
    @base = base
    @height = height
    @hypotenuse = hypotenuse
  end 
  
  def kind
    if !(@base + @height > @hypotenuse) || !(@height + @hypotenuse > @base) || !(@hypotenuse + @base > @height)
        raise TriangleError
      elsif (@base == @height) && (@height == @hypotenuse)
        return :equilateral
      elsif (@height == @hypotenuse) && !(@base)
        return :isosceles
      
      end
  end
end