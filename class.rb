class ClassObject
  attr_accessor :abuelo
end

class Object < ClassObject
  attr_accessor :trazo, :padre

  def rellenar
    # un comportamiento
  end
  # .........
end

class Circle < Object
  attr_accessor :radio

  # .........
end

class Square < Figura
  attr_accessor :lado

  # .........
end

class Triangle < Figura
  attr_accessor :alto, :base

  # .........
end

c1 = Circle.new
c1.rellenar = "Red"

puts c1
