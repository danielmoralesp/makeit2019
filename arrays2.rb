element = []

(0..5).each do |i|
  puts "Añadiendo valores al la lista: valor #{i}"

  element.push(i)
end

# element.each do |i|
#   puts "Element es #{i}"
# end

element.each { |i| puts "Element es #{i}" }
