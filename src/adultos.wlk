import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22
	var alguno

	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(alguien) {
		
		alguno = alguien
		self.caramelosAEntregar(alguien)
		tolerancia -= 1
	
	
	}
	method caramelosAEntregar(alguien) {
		if(tolerancia<alguien.capacidadSusto()){
			alguien.recibirCaramelos(alguien.capacidadSusto()-tolerancia)
			return (alguien.capacidadSusto()-tolerancia)
	}
	else
		return 0
	}
	
	

}
