print "Ingrese un numero: "
num = gets.chomp.to_i

i = 0

while num < 10
  puts "El numero #{num} es menor a 10"

  print "Ingrese otro numero: "
  num = gets.chomp.to_i
end
