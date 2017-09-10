
class Persona {
	
	var enfermedades = #{}
	var estaEnComa = false
	var cantidadCelulas
	var temperatura
	
	method contraer(enfermedad) {
		enfermedades.add(enfermedad)
	}
	
	method pasarUnDia() {
		enfermedades.forEach { enfermedad => enfermedad.provocarEfectoSobre(self) }
	}
	
	method destruirCelulas(unaCantidad) {
		cantidadCelulas -= unaCantidad
	}
	
	method aumentarTemperatura(unaCantidad) {
		temperatura = 45.min(temperatura + unaCantidad)
		if(temperatura.equal(45)) {
			self.entrarEnComa()
		}
	}
	
	method cantidadCelulas() {
		return cantidadCelulas
	}
	
	method entrarEnComa() {
		estaEnComa = true
	}
}
