object pepita {
	var energia = 100
    var cantKms = 0
    
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return (energia > 500 && energia < 1000)
    }
    // enunciado 2
    method cuantoQuiereVolar() {
    	if(energia > 300 && energia < 400){
    		cantKms = cantKms + 10
    		return energia/5 + cantKms
    	} else{
    		return energia/5 + cantKms
    	}
    	if(energia % 20 == 0){
    		cantKms = cantKms + 15
    		return energia/5 + cantKms
    	} else{
    		return energia/5 + cantKms
    	} 
    }
    method salirAComer() {
    	self.vola(5)
    	self.come(alpiste)
    	self.vola(5)
    }
    
    method haceLoQueQuieras() {
    	if(self.estaCansada()) {
    		self.come(alpiste)
    	} else if(self.estaFeliz()) {
    		self.vola(8)   	
    	} else {
    		energia = energia + 0
    	}
    }
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {	
	var energiaMijo = 0
	
	method energiaQueOtorga() {
		return energiaMijo
	}
	
	method mojarse() {
		energiaMijo = energiaMijo + 15
	}
	method secarse() {
		energiaMijo = energiaMijo + 20
	}
}

object canelones {
	var aderezo = 0
	
	method energiaQueOtorga() {
		return aderezo + 20
	}
	
	method conSalsa() {
		aderezo = aderezo + 5	
	}
	
	method conQueso() {
		aderezo = aderezo + 7
	}
	
	method sinSalsa() {
		aderezo = aderezo - 5
	}
	
	method sinQueso() {
		aderezo = aderezo - 7
	}	
}
// enunciado 3
object roque {
	var alumno = pepita
	
	method entrenar() {
	    alumno.vola(10)
	    alumno.come(alpiste)
	    alumno.vola(5)
	    alumno.haceLoQueQuieras()
	}
}