class Triangle
  define_method(:initialize) do |a, b, c|
    @triangle_sides = [a, b, c].sort
  end

  define_method(:triangles?) do
    if @triangle_sides[2] >= @triangle_sides[0] + @triangle_sides[1]
      false
    elsif @triangle_sides.uniq.size == 1
      'equilateral'
    elsif @triangle_sides.uniq.size == 2
      'isosceles'
    else @triangle_sides.uniq.size == 3
      'scalene'
    # else
    #   true
    end
  end
end
