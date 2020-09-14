object pamela {
	
	var energiaInicial = 6000
	const profesion = "doctora"
	const objetos = ["algodon","aguaOxigenada", "cintaDePapel", "cintaDePapel"]
	const gritoDeVictoria = "Aca Paso la Pamela"
	
	method getGrito() = gritoDeVictoria
	
	method getObjetos() = objetos
	
	method getEnergia() = energiaInicial
	
	method getCantidadDeObjetos() = objetos.size()
	
	method eliminarObjeto(unObjeto){
		objetos.remove(unObjeto)
	}
	
	method lucharManoAMano(enemigo){
		energiaInicial += 400
	}
	
	method lucharContraEquipo(unEquipo){
		unEquipo.forEach({personaje => self.lucharManoAMano(personaje)})
	}
	
	method quitarEnergia(unValor){
		energiaInicial -= unValor
	}
	
}

object pocardo {
	
	var energiaInicial = 5600
	const profesion = "musicoterapeuta"
	const gritoDeVictoria = "Siente el poder de la Musica!"
	const objetos = ["guitarra","curitas", "cotonetes"]
	
	method getEnergia() = energiaInicial
	
	method getObjetos() = objetos
	
	method getGrito() = gritoDeVictoria
	
	method getCantidadDeObjetos() = objetos.size()
	
	method lucharContraEquipo(unEquipo){
		unEquipo.forEach({personaje => self.lucharManoAMano(personaje)})
	}
	
	method eliminarObjeto(unObjeto){
		objetos.remove(unObjeto)
	}
	
	method lucharManoAMano(enemigo){
		energiaInicial += 500
	}
	
	method quitarEnergia(unValor){
		energiaInicial -= unValor
	}
}

object tulipan {
	
	var energiaInicial = 8400
	const profesion = "guerrera"
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	const objetos = ["rastrillo","maceta", "maceta","manguera"]
	
	method eliminarObjeto(unObjeto){
		objetos.remove(unObjeto)
	}
	
	method getObjetos() = objetos
	
	method getGrito() = gritoDeVictoria
	
	method getEnergia() = energiaInicial
	
	method lucharContraEquipo(unEquipo){
		unEquipo.forEach({personaje => self.lucharManoAMano(personaje)})
	}
	
	method getCantidadDeObjetos() = objetos.size()
	
	method lucharManoAMano(enemigo){
		enemigo.quitarEnergia(enemigo.getEnergia() * 0.5)
	}
	
	method quitarEnergia(unValor){
		energiaInicial -= unValor
	}
}

object toro {
	
	var energiaInicial = 7800
	const gritoDeVictoria = "No se metan con el toro"
	var objetos = #{}
	
	method getObjetos() = objetos
	
	method getGrito() = gritoDeVictoria
		
	method getEnergia() = energiaInicial 
	
	method getCantidadDeObjetos() = objetos.size()
	
	method quitarEnergia(unValor){
		energiaInicial -= unValor
	}
	
	method eliminarObjeto(unObjeto){
		objetos.remove(unObjeto)
	}
	
	method lucharContraEquipo(unEquipo){
		unEquipo.forEach({personaje => self.lucharManoAMano(personaje)})
	}
	
	method lucharManoAMano(enemigo){
		enemigo.quitarEnergia(200 * enemigo.getCantidadDeObjetos())
		self.agregarObjeto(enemigo.getObjetos().last())
		enemigo.eliminarObjeto(enemigo.getObjetos().last())
	}
	
	method agregarObjeto(unObjeto){
			objetos.add(unObjeto)
	}
	
}











