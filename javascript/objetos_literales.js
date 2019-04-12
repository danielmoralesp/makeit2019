// var objetoVacio = {}

// var variable = 5

// var otroObjeto = {
// 	"clave": "valor",
// 	"clave2": 2,
// 	"clavetres": variable,
// 	"clave4": true,
// 	"5": ["dos", 4],
// 	"otro_objeto": otro_objeto2 = {
// 		"clave1": 3,
// 		"clave3": true
// 	},
// 	"otro": function(){
// 		return "Hola"
// 	}
	
// }

// console.log(otroObjeto.otro())


var ana = {
	nombre: "ana",
	saluda: function(apellido){
		return "Hola " + this.nombre + " " + apellido
	}
}

console.log(ana.saluda("gonzales"))



// console.log(otroObjeto)
// console.log(otroObjeto["clave4"])
// console.log(otroObjeto.clave4)

// otroObjeto["claveNueva"] = "valor a clave o propiedad nueva"
// otroObjeto.claveNuevaConPunto = "otro nuevo valor"

// otroObjeto["clave4"] = false
// otroObjeto.clave2 = 3

// otroObjeto["otro_objeto"]["clave1"] = 2
// otroObjeto.otro_objeto.clave3 = false

// console.log(otroObjeto["5"])

// delete otroObjeto.clave2

// console.log(otroObjeto)


var Persona = function(nombre, apellido) {
	this.nombre = nombre
	this.apellido = apellido

}

var persona = Persona.new("daniel", "morales")




// class Persona
// 	def initialize(nombre, apellido) 
// 		@nombre = nombre
// 		@apellido = apellido
// 	end
// end

// persona = Persona.new("daniel", "morales")