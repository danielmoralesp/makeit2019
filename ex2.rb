num_aleatorio = rand(1..3)
puts num_aleatorio

print "Ingrese un numero del 1 al 10"
num_user = gets.chomp.to_i

puts num_user == num_aleatorio ? "Felicitaciones, ese era!" : "Lo siento, intenta nuevamente!"
