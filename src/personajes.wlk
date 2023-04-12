import elementos.*
import armas.*

object floki {
	var property arma = ballesta
	
	method encontrar(elemento) {
		if(arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso() //en este caso el orden es indistinto pero hay que estar atentos!
		}
	}	
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoVisto
	
	method valorRecolectado() = valorRecolectado
	
	method ultimoElementoVisto() = ultimoElementoVisto
	
	method encontrar(elemento) {
		valorRecolectado += elemento.recibirValor()
		elemento.recibirTrabajo()
		ultimoElementoVisto = elemento
	}
	method estaFeliz() = (valorRecolectado >= 50) or (ultimoElementoVisto.altura() >= 10)
}
