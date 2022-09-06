
import chicos.*
import elementos.*
import adultos.*
import legion.*


object barrio {
	
	var masCaramelos = []
	var masCaramelos2= []
	var chicos = []
	
	method masCaramelos(){
		return masCaramelos
	}
	
	method chicos(integrante){
		chicos.addAll(integrante)
	}
	method algunoMuyAsustador() {
		return chicos.all({unChico => unChico.capacidadSusto()>42})
	}
	

	
	method chicosConMasCaramelos(numero) {
	 	masCaramelos =chicos.sortedBy({a,b => a.caramelos()>b.caramelos()})
		masCaramelos2 = masCaramelos.take(numero) 
		return masCaramelos2
	}

}

