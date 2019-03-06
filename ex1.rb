print "Ingrese numero: "

num = gets.chomp.to_i

if num > 10
  puts "El numero #{num} es mayor a 10"
elsif num <= 10
  puts "El numero #{num} es menor o igual a 10"
end
