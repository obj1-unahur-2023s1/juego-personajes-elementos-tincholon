object jabalina {
	var estaCargada = true
	// acá no va property porque no queremos que se pueda setear el valor
	
	method estaCargada() = estaCargada
	method potencia() = 30
	method registrarUso() {
		estaCargada = false
	}
}

object ballesta {
	var cantidadDeFlechas = 10
	
	method cantidadDeFlechas() = cantidadDeFlechas	
	method potencia() = 4
	method estaCargada() = cantidadDeFlechas > 0
	method registrarUso() {
		cantidadDeFlechas -= 1
	}
}