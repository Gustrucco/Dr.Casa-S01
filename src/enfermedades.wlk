
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
	var personasAfectadas = new Dictionary()
	
	method provocarEfectoSobre(unaPersona) {
		unaPersona.destruirCelulas(cantidadCelulasAmenazadas)
		self.sumarUnDiaPara(unaPersona)
	}
	
	method sumarUnDiaPara(unaPersona) {
		personasAfectadas.put(unaPersona, self.cantidadDiasAfectandoA(unaPersona) + 1)
	}
	
	method esAgresiva(unaPersona) {
		return self.cantidadDiasAfectandoA(unaPersona) > 30
	}
	
	method cantidadDiasAfectandoA(unaPersona) {
		// Recibe una lambda, es super choto
		return personasAfectadas.getOrElse(unaPersona, {0})
	}
}