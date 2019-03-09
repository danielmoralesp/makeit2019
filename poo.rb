# Clase
class Person
  attr_accessor :name
  # attr_reader :name
  # attr_writter :name

  def initialize(name)
    @name = name
  end

  def saludar2(otro_nombre)
    "Hola #{otro_nombre}, me llamo #{@name}"
  end
end

# Objeto
p1 = Person.new("Juan") ## "creando una nueva persona ..."
puts p1.name

p1.name=("Diego")
puts p1.name
# p2 = Person.new("Diana") ## "creando una nueva persona ..."
#
# puts p1.saludar2("Jose")


# p1 = Person.new.saludar  # Persona 1
# p2 = Person.new.saludar  # Persona 2

# def saludar(name)
#   "Hola #{name}"
# end
#
# puts saludar("Pablo")

# class Array
#   def length
#     # su propio codigo
#   end
# end
#
# [2, 3].length
