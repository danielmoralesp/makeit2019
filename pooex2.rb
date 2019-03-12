class Car
  # Parametro opcional
  # Parametro por default
  # Multiples parametros

  def initialize(velocity = 0)
    @velocity = velocity
  end

  def velocity
    @velocity
  end

  def accelerate(accelerate = 1)
    @accelerate = accelerate
    @velocity += @accelerate
  end

  def brake(brake = 1)
    @brake = brake
    @velocity -= @brake
  end
end

car = Car.new
puts car.velocity # => 0

car.accelerate
puts car.velocity # => 1

car.accelerate(2)
puts car.velocity # => 3

car.brake
puts car.velocity # => 2

car.brake(2)
puts car.velocity # => 0
