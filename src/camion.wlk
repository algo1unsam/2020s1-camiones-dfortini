import cosas.*

object camion {

	const property cosas = []
	const tara = 1000
	const pesoMaximo = 2500

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}

	method todoPesoEsPar() = cosas.all({ cosa => cosa.pesoEsPar() })

	method hayAlgunoQuePesa(peso) = cosas.any({ cosa => cosa.peso() == peso })

	method pesoTotal() {
		return tara + cosas.sum({ unaCosa => unaCosa.peso() })
	}

	method excedidoDePeso() {
		return (self.pesoTotal() > pesoMaximo)
	}

	method objetosQueSuperanPeligrosidad(nivel) = cosas.filter({ unaCosa => unaCosa.nivelPeligrosidad() > nivel })

	method objetosMasPeligrososQue(cosa) = self.objetosQueSuperanPeligrosidad(cosa.nivelPeligrosidad())

	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = 
		not self.excedidoDePeso() and
			self.objetosQueSuperanPeligrosidad(nivelMaximoPeligrosidad).isEmpty()

	method tieneAlgoQuePesaEntre(min, max) {
		
	}
}

