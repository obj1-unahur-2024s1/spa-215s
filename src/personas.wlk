object  olivia {
	var concentracion = 6
	
	method gradoDeConcentracion() = concentracion
	method discutir(){ concentracion -= 1}
	method recibirMasaje() {concentracion += 3}
	method banioDeVapor(){}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasaje() {esFeliz = true}
	method banioDeVapor() {
		tieneSed = true
		peso -= 500
	}
	method tomarAgua() {tieneSed = false}
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	method correr() {peso -= 300}
	method verNoticiero() {esFeliz = false}
	method estaPerfecto() = esFeliz && !tieneSed && peso.between(50000, 70000)
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var nivelContracturacion = 0
	var pielGrasosa = true
	
	method recibirMasaje() {nivelContracturacion = 0.max(nivelContracturacion - 2)}
	method banioDeVapor() {pielGrasosa = false}
	method comerBigMac() {pielGrasosa = true}
	method bajarAFosa() {
		pielGrasosa = true
		nivelContracturacion += 1
	}
	method jugarAlPaddle() {nivelContracturacion += 3}
	method diaDeTrabajo() {
		self.bajarAFosa()
		self.comerBigMac()
		self.bajarAFosa()
	}
}