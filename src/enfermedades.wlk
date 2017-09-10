
class EnfermedadInfecciosa {
	
	var cantidadCelulasAmenazadas
	
	method provocarEfectoSobre(unaPersona) {
		unaPersona.aumentarTemperatura(cantidadCelulasAmenazadas / 1000)
	}
	
	method reproducirse() {
		cantidadCelulasAmenazadas *= 2
	}
	
	method esAgresivaPara(unaPersona) {
		return self.afectaPorcentajeConsiderable(unaPersona.cantidadCelulas())
	}
	
	method afectaPorcentajeConsiderable(cantidadTotalCelulas) {
		return cantidadCelulasAmenazadas > cantidadTotalCelulas * 0.10
	}
}

class EnfermedadAutoinmune {

	var cantidadCelulasAmenazadas
	var personasAfectadas
	
	method provocarEfectoSobre(unaPersona) {
		unaPersona.destruirCelulas(cantidadCelulasAmenazadas)
	}
	
	method esAgresiva() {
		
	}
}