txt_file = open("students.txt")

txt_file.each do |line|
  student = line.split(',')
  puts "Maker: #{student[0]}"
end
