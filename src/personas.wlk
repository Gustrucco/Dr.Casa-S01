
class Persona {
	
	var enfermedades = #{}
	var cantidadCelulas
	var temperatura
	
	method contraer(enfermedad) {
		enfermedades.add(enfermedad)
	}
	
	method pasarUnDia() {
		
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
		///
	}
}