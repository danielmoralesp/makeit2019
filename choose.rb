print "Ingrese el numero de personas: "
num_person = gets.chomp.to_i

people = []

num_person.times do
  print "Ingrese el nombre de la persona: "
  nombre = gets.chomp

  people << nombre
  puts people
end

puts "La persona ganadora es #{people.sample}"
