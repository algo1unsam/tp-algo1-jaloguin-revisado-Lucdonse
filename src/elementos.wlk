object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	
	var longitud = 2
	var property capacidadSusto = 0
	
	method capacidadSusto(){
		capacidadSusto = longitud*5
		return capacidadSusto
	}
	
}

object mascaraDracula {
	
	var tamanio = 2
	
	var property capacidadSusto = 0
	
	method capacidadSusto(){
		capacidadSusto = tamanio*2
		return capacidadSusto
	}

}

object mascaraFrankenstein {
	
	var tamanio = 22
	
	var property capacidadSusto = 0
	
	method capacidadSusto(){
		capacidadSusto = tamanio
		return capacidadSusto
	}
	
}

object mascaraPolitico {
	
	var property promesasRealizadas = 5
	
	var property capacidadSusto = 0
	
	method capacidadSusto(){
		capacidadSusto = promesasRealizadas*2
		return capacidadSusto
	}
	}

