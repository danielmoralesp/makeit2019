persona = { nombre: "Jose", apellido: "Perez", tel: "1231312" }
puts persona["apellido"]
puts persona[:apellido]
# persona["apellido"] = "Nuevo apellido"
# persona.delete("tel")
# puts persona

persona.each do |llave, valor|
  puts "La llave es #{llave} y el valor es: #{valor}"
end




# personas = [0, 1, 2]
#
# nombre: Jose
# apellido: Perez
# tel: 1212321
