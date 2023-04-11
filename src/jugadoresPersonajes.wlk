object luisa {
	var property personajeActivo
	
	method aparece(elemento) {
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var property arma = ballesta
	
	method cambiarArma(unArma){
		arma = unArma
	}
	method encontrar(elemento) {
		if(arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()
		}
	}	
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoVisto
	
	method encontrar(elemento) {
		elemento.recibirTrabajo()
		valorRecolectado += elemento.recibirValor()
		ultimoElementoVisto = elemento
	}
	method estaFeliz() = (valorRecolectado >= 50) or (ultimoElementoVisto.altura() > 10)
}

object jabalina {
	var property estaCargada = true
	
	method potencia() = 30
	method registrarUso() {
		estaCargada = false
	}
}

object ballesta {
	var property cantidadDeFlechas = 10
	
	method potencia() = 4
	method estaCargada() = (cantidadDeFlechas > 0)
	method registrarUso() {
		cantidadDeFlechas -= 1
	}
}

object castillo {
	var property nivelDeDefensa = 150
	
	method altura() = 20
	method recibirAtaque(potenciaDeAtaque) {
		nivelDeDefensa -= potenciaDeAtaque
	}
	method recibirTrabajo() {
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	method recibirValor() = nivelDeDefensa/5
	
}

object aurora {
	var property estaViva = true
	
	method altura() = 1
	method recibirAtaque(potenciaDeAtaque) {
		if(potenciaDeAtaque >= 10){
			estaViva = false
		}
	}
	method recibirTrabajo(){}
	method recibirValor() = 15
}

object tipa {
	var property altura = 8
	
	method recibirAtaque(potenciaDeAtaque){}
	method recibirTrabajo () {
		altura += 1
	}
	method recibirValor() = altura*2
}