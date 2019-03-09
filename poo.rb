# Clase
class Person
  def initialize(name)
    # Se ejecuta siempre al momento de instanciar o crear un nuevo objeto
    # puts "creando una nueva persona con nombre: #{name}..."
    # Variable de instancia o atributo de clase
    @name = name
  end

  def saludar2(otro_nombre)
    "Hola #{otro_nombre}, me llamo #{@name}"
  end

                                  #############
                                  # Como se hacia antes


                                  #############

  # Metodo para @name pueda ser leido  desde afuera de la clase
  # getter = Leer
  def name
    @name
  end

  # Metodo para que @name pueda ser modificado desde afuera
  # setter = Modificar
  def name=(name)
    @name = name
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
