import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = []
	var caramelos = 0
	var lider
	var sinRepetidos = []
	var repetidos = []
	var todosLosDisfraces = []
	var repetidos2 = []


	method capacidadSusto() {
		return integrantes.sum({unIntegrante => unIntegrante.capacidadSusto()})
	}

	method agregarIntegrantes(integrante) {
		integrantes.addAll(integrante)
		
	}
	method caramelos() {
		return integrantes.sum({unIntegrante => unIntegrante.caramelos()}) 
	}
	method lider() {
		lider = integrantes.max({unIntegrante => unIntegrante.capacidadSusto()})
		return lider
	}
	
	method recibirCaramelos(cantidadCaramelos){
		self.lider()
		lider.recibirCaramelos(cantidadCaramelos)
	}
	method normaSinRepetidos() {
		
		self.disfracesRepetidos().forEach({unDisfraz => integrantes.forEach({unIntegrante => unIntegrante.quitarDisfraz(unDisfraz)})})
		
	}
	
	method disfracesRepetidos(){
		repetidos = integrantes.map({unIntegrante => unIntegrante.disfraces().asSet()}).flatten() //devuelve los disfraces repetidos
		repetidos2 = integrantes.map({unIntegrante => unIntegrante.disfraces()}).flatten().asSet() //devuelve los disfraces unicos
		repetidos.removeAll(repetidos2)
		return repetidos
	}
	
	method todosLosDisfraces() {
		todosLosDisfraces = integrantes.map({unIntegrante => unIntegrante.disfraces()}).flatten()
		return todosLosDisfraces
	}
	
}
