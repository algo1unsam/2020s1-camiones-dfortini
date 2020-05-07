object knightRider {

	method peso() {
		return 500
	}

	method nivelPeligrosidad() {
		return 10
	}

	method pesoEsPar() = self.peso().even()

}

class Transformer {

	var transformadoEnAuto = true

	method peso() {
		return 800
	}

	method nivelPeligrosidad() {
		return if (transformadoEnAuto) {
			15
		} else {
			30
		}
	}

	method transformar() {
		transformadoEnAuto = not transformadoEnAuto
	}

	method pesoEsPar() = self.peso().even()

}



class PaqueteLadrillos {
	const cantidad = 10

	method peso() {
		return 2 * cantidad
	}

	method nivelPeligrosidad() {
		return 2
	}
}





object embalajeSeguridad {

	var property cosaEmbalada

	method peso() {
		self.validarCosaEmbalada()
		return cosaEmbalada.peso()
	}

	method nivelPeligrosidad() {
		self.validarCosaEmbalada()
		return cosaEmbalada.nivelPeligrosidad() / 2
	}

	method validarCosaEmbalada() {
		if (cosaEmbalada == null) {
			self.error("No hay ninguna cosa embalado")
		}
	}
	
	method pesoEsPar() = self.peso().even()

}

