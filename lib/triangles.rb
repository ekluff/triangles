class Triangle
  define_method(:initialize) do |a, b, c|
    @triangle_sides = [a, b, c].sort
  end

  define_method(:triangles?) do
    if @triangle_sides[2] >= @triangle_sides[0] + @triangle_sides[1]
      false
    elsif @triangle_sides.count(@triangle_sides[0]) == @triangle_sides.size
      'equilateral'
    else
      true
    end
  end
end
