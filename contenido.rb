content = File.read("contenido.txt") # Leer el contenido del archivo

lineas = content.split("\n") # divide el contenido en lineas

# recorrer las lineas y las imprimimos

lineas.each do |linea|
  puts linea
  print '> '
end
