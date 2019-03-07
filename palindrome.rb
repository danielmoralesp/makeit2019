print "Ingrese una cadena: "
cadena = gets.chomp

cadena = cadena.downcase.scan(/\w/)
print cadena

if cadena == cadena.reverse
  puts "es palindrome"
else
  puts "no es palindrome"
end
