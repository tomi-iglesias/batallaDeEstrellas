import personajes.*

object pelea {
	
	const equipoUno = [tulipan,pamela]
	const equipoDos = [toro,pocardo]
	
	method getEquipoUno() = equipoUno
	method getEquipoDos() = equipoUno
	
	method combatir(){
		self.pelearEntre(equipoUno, equipoDos)
		self.pelearEntre(equipoDos, equipoUno)		
	}
	
	method pelearEntre(unEquipo, otroEquipo){
		unEquipo.forEach({personaje => personaje.lucharContraEquipo(otroEquipo)})
	}
	
	method obtenerEnergiaDelEquipo(unEquipo){
		return unEquipo.sum({personaje => personaje.getEnergia()})
	}
	
	method obtenerGritosGanadores(unEquipo){
		return unEquipo.map({personaje => personaje.getGrito()})
	}
	
	method gritoDeLosGanadores(){
		self.combatir()
		if (self.obtenerEnergiaDelEquipo(equipoUno) > self.obtenerEnergiaDelEquipo(equipoDos)){
			return self.obtenerGritosGanadores(equipoUno)
		} else if (self.obtenerEnergiaDelEquipo(equipoUno) < self.obtenerEnergiaDelEquipo(equipoDos)){
			return self.obtenerGritosGanadores(equipoDos)
		} else {
			return "Empate"
		}
	}
}
