module MyModule
  MAX_CONNECTIONS = 5

  def method_name4

  end

  def method_name3
    # Mixins
  end

  class Clase_1
    def initialize(name)
      @name = name
    end
  end

  class Class2
    def method_name2

    end
  end

  class Class3 < Class2

  end
end

puts MyModule::MAX_CONNECTIONS

MyModule::Clase_1.new("Pedro")

p2 = MyModule::Class2.new
puts p2.method_name2

# MyModule::method_name4  -- Error

class OtraClase
  include MyModule
end

p1 = OtraClase.new
p1.method_name3

class ClassObject
  include MyModule1
  include MyModule2
end

class Class2
  module MyModule
  end
end

ClassObject.new.method1
ClassObject.new.method_name2

module MyModule
  module MyModule2
    class Class2
    end
  end
end

MyModule::MyModule2::Class2.new

# Colison de nombres --- Clases
module Admin
  class Account
    # cuenta del usuario al loguearse
    def method_name

    end
  end
end

Admin::Account.new.method_name


class Account
  # cuenta bancaria
  def method_name
    
  end
end

Account.new.method_name
