if (condicion) {
	// lo que necesita ejecutar el codigo
} else if (condicion2) {
	// si se cumple segunda condicion
} else {
	// si no se cumple la primera condicion
}

while (condicion) {
	// se mantiene en el ciclo hasta que la condicion se hace falsa
}

var i = 0

while(i < 200){
	console.log("Este es el numero " + i)
	// i = i + 1
	i += 1
}

for (<inicializacion>; <codicion>; <incrementacion>){
	// el cuerpo del ciclo, veces a ejecutar
}

for(i=1; i<=200; i++){
	console.log("Este es el numero " + i)
}

var variable = 2
var array2 = [1, 2]

var array3 = [null, null]

array = [1, "Nombre", true, false, variable, [3, 4, "2"], array2 ]
console.log(array)

array[3] = "reasignado"
console.log(array[3])
console.log(array)
array.push("nuevo valor al final")
console.log(array)

array.splice(4, 0, "Valor a agregar via splice")
console.log(array)
array.splice(5, 1)
console.log(array)


var a = [1, 2, 3, 4, 5];
a.splice(2);
console.log(a)

var str = "Array de caractéres"

// console.log(str.length)
// console.log(str[0])
// console.log(str[1])
// console.log(str[2])
// console.log(str[3])

for(i=0; i < str.length; i++){
	console.log(str[i])
}

var car = "Estos otros caracteres"
car.split("")
console.log(car)





