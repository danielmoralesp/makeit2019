file_name = "students.txt"
print "Escribamos una nueva linea en el archivo #{file_name}: "

File.open(file_name, 'a+') do |file|
  print "Que desea guardar en el archivo?"
  user_text = gets

  file.write(user_text)
end
