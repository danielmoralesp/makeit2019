variable = "Otro string en una variable"
funcion = "una funcion"

## clave/indice: valor
# 0: "juan"
# 1: "pedro"
# 2: 4
# 3: true

users = ["juan", "pedro", 4, true, variable, funcion, ["otro array", 45, true], "asdd", "a"]
puts users[4] # Read
puts users[1] = "german"
users.push("agregar al final")
users << "agregar segundo valor al final"
users.insert(2, "valor en posicion dos")
users.delete_at(3)

users.each_with_index do |user, index|
  puts "#{index}: #{user}"
  # puts "El user es #{user} y el indice es: #{index}"
end
