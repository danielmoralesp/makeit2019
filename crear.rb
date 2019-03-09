# if File.exist?("ruta al archivo o carpeta")
#   # Verifica si el archivo o la carpeta existe
#   # ejecuta este bloque
# else
#
# end
#
# if File.file?("ruta al archivo")
#   # si existe solo archivo
# end

File.open("carpeta/cuento.txt", "a+") do |file|
  file.write("Este es otro texto con a+ \n")
end
