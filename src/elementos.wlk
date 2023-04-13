object castillo {
	var nivelDeDefensa = 150
	// acá lo mismo, no usamos var property porque no queremos que nos carguen la defensa a mano
	
	method nivelDeDefensa() = nivelDeDefensa
	method altura() = 20
	method recibirAtaque(potenciaDeAtaque) { //conviene poner el ARMA en vez de solo la potencia, porque después podemos llegar a necesitar algunas otras cosas del arma que nos obligan a reformular el código.
		nivelDeDefensa = 0.max(nivelDeDefensa - potenciaDeAtaque) // El nivel de defensa no puede ir por abajo de cero
	}
	method recibirTrabajo() {
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	method recibirValor() = nivelDeDefensa/5
	
}

object aurora {
	var estaViva = true
	
	method altura() = 1
	method recibirAtaque(potenciaDeAtaque) {
		/* 
		if(potenciaDeAtaque >= 10){ 
			estaViva = false
		}
		Acá queda muchísimo mejor que usando if
		*/
		estaViva = not(potenciaDeAtaque >= 10) 
	}
	method recibirTrabajo(){}
	method recibirValor() = 15
}

object tipa {
	var altura = 8
	
	method recibirAtaque(potenciaDeAtaque){}
	method recibirTrabajo () {
		altura ++ // ++ es lo mismo que += 1, lo mismo -- es -= 1
	}
	method recibirValor() = altura*2
}