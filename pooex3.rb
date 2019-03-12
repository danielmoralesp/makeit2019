class Square
  attr_accessor :length

  def initialize(length)
    @length = length
  end

  def area
    @length **2
  end

  def perimeter
    @length * 4
  end
end

instancia1 = Square.new(5)
puts instancia1.area
puts instancia1.perimeter

instancia2 = Square.new(10)
puts instancia2.area
puts instancia2.perimeter
