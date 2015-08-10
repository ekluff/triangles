require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangles?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(3, 3, 9)
      expect(test_triangle.triangles?()).to(eq(false))
    end
  end
end
