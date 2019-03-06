random = rand(1..10)

puts random

print "Ingrese un numero del 1 al 10"
user_num = gets.chomp.to_i

intentos = 1

while intentos < 3 && random != user_num
  puts "El numero ingresado es incorrecto, intentalo nuevamente #{random}"
  user_num = gets.chomp.to_i

  intentos += 1
end

if random == user_num
  puts "Felicitaciones lo adivinaste"
elsif random != user_num && intentos == 3
  puts "Lo sentimos el numero de intentos es mayor a 3"
end
