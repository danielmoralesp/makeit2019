array = "Hola Mundo"
# str_array = ["H", "o", "l", "a"]

puts array.length
puts array[0]
puts array[1]
puts array[2]
puts array[3]

chars = array.chars

chars.each do |c|
  puts "cada caracter #{c}"
end

hola = "Hola Mundo"
p hola.split(" ")

separar_cadenas = "hola,mundo,dos"
p separar_cadenas.split(",")

contraria = ["array", "de", "varios"]
puts contraria.join(" ")

contraria2 = ["array", "de", "varios"]
puts contraria2.join("*")
