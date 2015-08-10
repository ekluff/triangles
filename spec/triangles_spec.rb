require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangles?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(3, 3, 9)
      expect(test_triangle.triangles?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(6, 5, 9)
      expect(test_triangle.triangles?()).to(eq(true))
    end

    it("returns 'equilateral' if all sides are equal") do
      test_triangle = Triangle.new(6, 6, 6)
      expect(test_triangle.triangles?()).to(eq("equilateral"))
    end

    it("returns 'isosceles' if all sides are equal") do
      test_triangle = Triangle.new(9, 9, 14)
      expect(test_triangle.triangles?()).to(eq("isosceles"))
    end

    it("returns 'scalene' if all sides are unequal") do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.trianges?()).to(eq("scalene"))
    end
  end
end
