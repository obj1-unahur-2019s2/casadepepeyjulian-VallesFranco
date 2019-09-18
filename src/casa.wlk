import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	method tieneComida() {
		return cosas.any{c => c.esComida()}
	}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or 
			cosas.last().precio() > 5000
		}
	method esDerrochona() {
		return cosas.sum{c => c.precio()} >= 9000
	}
	method compraMasCara() {
		return cosas.max{c => c.precio()}
	}
	method electrodomesticosComprados() {
		return cosas.filter{c => c.esElectrodomestico()}
	}
	method malaEpoca() {
		return cosas.all{c => c.esComida()}
	}
	method queFaltaComprar(lista) {
		return (lista.asSet()).difference(cosas.asSet()).asList()		
	}
	method faltaComida() {
		return cosas.count{c => c.esComida()} < 2
	}
	method gastoEnComida() {
		return cosas.filter{c => c.esComida()}.sum{c => c.precio()}
	}
	method hayElectrodomesticosBaratos() {
		return cosas.any{c => c.esElectrodomestico() && c.precio() < 3000}
	}
	method preciosDeElectrodomesticos() {
		return cosas.filter{c => c.esElectrodomestico()}.map{c => c.precio()}.asSet()
	}
	method nivelEnAumento() {
		return cosas.last().precio() >= cosas.first().precio() * 2
	}
	method primeraComidaComprada() {
		return cosas.find{c => c.esComida()}
	}	
}

//			#CUENTAS BANCARIAS#			//

object cuentaCorriente {
	var property saldo = 0
	
	method depositar(importe) {
		self.saldo(importe)
	}
	method extraer(importe) {
		self.saldo(-importe)
	}
	
}