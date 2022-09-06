import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var property caramelos = 0
	

	method capacidadSusto() {
		return nivelIra + disfraces.sum({unDisfraz => unDisfraz.capacidadSusto()})
	}
	
	method disfrazar(disfraza){
		
		disfraces.add(disfraza)
		
	}
	
	method disfraces() {
		return disfraces
	}
	
	method caramelos() {
		return caramelos
		 
	}
	
	method quitarDisfraz(disfraza) {
		
		disfraces.remove(disfraza)
	}
	
	method recibirCaramelos(cantidadCaramelos) {
		caramelos =cantidadCaramelos.div(4/3)
	}
	method dejarDeUsarMenosEfectivo() {
		disfraces.remove(disfraces.min({unDisfraz => unDisfraz.capacidadSusto()}))
	}
}

object pancracio {
	
	var property capacidadSusto = 4
	var property disfraces = [mascaraDracula]
	var property caramelos = 0
	
	method disfrazar(disfraza){
		
		disfraces.clear()
		disfraces.add(disfraza)		
	}
	
	method capacidadSusto() {
		return capacidadSusto + disfraces.sum({unDisfraz => unDisfraz.capacidadSusto()})
	}
	method disfraces() {
		return disfraces
	}
	method recibirCaramelos(cantidadCaramelos) {
		caramelos = cantidadCaramelos
	}
	method caramelos() {
		return caramelos
		 
	}
	method quitarDisfraz(disfraza) {
		
		capacidadSusto += 2
	}

}

// El chico inventado .

object pedro {
	
	const disfraces = []
	var property capacidadSusto = 0
	var property caramelos = 0
	
	method recibirCaramelos(cantidadCaramelos) {
		caramelos = 0
	}
	method disfrazar(disfraza) {
		disfraces.add(disfraza)
	}
	
	method tirarTodosLosDisfraces() {
		disfraces.clear()
	}
	
	method disfraces() {
		return disfraces
	}
	
	method capacidadSusto() {
		return capacidadSusto + disfraces.sum({unDisfraz => unDisfraz.capacidadSusto()})
	}
	
	
	method quitarDisfraz(disfraza) {
		
		disfraces.remove(disfraza)
	}

}

