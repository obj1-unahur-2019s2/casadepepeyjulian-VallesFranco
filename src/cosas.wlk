object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesas {
	var property precio = 260
	
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object salsaDeTomate {
	var property precio = 90
	
	method precio() { return precio }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object cebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object dolar {
	var property cotizacion = 60  
}

object computadora {
	method precio() { return 500*dolar.cotizacion() }
}

object packDeComida {
	var property platoPrincipal = tiraDeAsado
	var property aderezo = cebollas
	
	method precio() { return platoPrincipal.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object packDeRegalo {
	const contenido = []
	
	method agregarArticulo(articulo) {
		contenido.add(articulo)
	}
	method sacarArticulo(articulo) {
		contenido.remove(articulo)
	}
	method precio() {
		return contenido.sum{a => a.precio()} *0.80
	}
	method esComida() {
		return contenido.all{a => a.esComida()}
	}
	method esElectrodomestico() {
		return contenido.any{a => a.esElectrodomestico()}
	}	
}