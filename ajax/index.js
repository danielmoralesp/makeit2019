var request = $.ajax({
	method: "POST",
	url: "http://...",
	data: {name: "my name"}
}).done(function(data){
	alert(data)
}).fail(function(){
	alert("hubo un error")
}).always(function(){
	alert("Siempre se ejecuta")
})


// otros metodos dentro de jquery ajax
$.post("/modal", function(data){
	$(".result").html(data)
})

$.getJSON("/modal", function(data){
	console.log(data)
})

