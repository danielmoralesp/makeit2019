products = [
  { id: 1, name: "Leche", price: 120, categories: ["familiar", "comida"] },
  { id: 2, name: "Arepa", price: 220, categories: ["desayuno", "comida", "tres"] },
  { id: 3, name: "Huevos", price: 140, categories: ["canasta familiar", "comida"] },
]

products.each do |product|
  puts product[:id]
  puts "Name: #{product[:name]}"
  puts "Price: #{product[:price]}"
  puts "Category: #{product[:categories].join(",")}"
  puts "-" * 10
end
