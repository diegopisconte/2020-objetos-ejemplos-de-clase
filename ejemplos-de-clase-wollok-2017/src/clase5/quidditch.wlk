// Ejemplo de WKO heredando de una clase
object ron inherits Guardian(10, 4, saetaDeFuego) {
	// Se puede agregar l�gica nueva
	method decirUnChiste() = "Knock knock"
}

// Ejemplo de una clase heredando de otra
// El constructor es new Guardian(skills, peso, escoba) como para Jugador
class Guardian inherits Jugador {
	var nivelDeReflejo = 20
	
	// Agrega l�gica propia que es s�lo para guardianes
	method concentrarse(){
		nivelDeReflejo += 10
	}
	method nivelDeReflejos() = nivelDeReflejo
	
	// Redefine habilidad() para hacer algo totalmente distinto
	override method habilidad() = skills + nivelDeReflejo
	
	// Redefine el m�todo abstracto coeficienteDeVelocidad()
	// Gracias a esto Guardian no es clase abstracta
	override method coeficienteDeVelocidad() = 2
}

class Cazador inherits Jugador {
	var punteria
	
	// Define su propio constructor que agrega la inicializaci�n de punter�a
	// y reutiliza lo que provee el constructor de Jugador
	constructor(unasSkills, unPeso, unaEscoba, unaPunteria) 
		= super(unasSkills, unPeso, unaEscoba){
		punteria = unaPunteria
	}
	
	method punteria(unaPunteria){
		punteria = unaPunteria
	}
	
	// Redefine el m�todo habilidad() reutilizando el comportamiento heredado
	override method habilidad() = 
		super() + punteria / peso
		
	// Redefine el m�todo abstracto coeficienteDeVelocidad()
	// Gracias a esto Cazador no es clase abstracta
	override method coeficienteDeVelocidad() = punteria /100
}

class Golpeador inherits Jugador {
	var fuerza
	constructor(unasSkills, unPeso, unaEscoba, unaFuerza) 
		= super(unasSkills, unPeso, unaEscoba){
		fuerza = unaFuerza
	}
	method fuerza(unaFuerza){
		fuerza = unaFuerza
	}
	override method habilidad() = 
		super() + fuerza
		
	override method coeficienteDeVelocidad() = 1
}

object fred inherits Golpeador(50, 200, saetaDeFuego, 50) {
	// El objeto puede redefinir un m�todo heredado tambi�n para hacer otra cosa
	override method velocidad() = 1000
}

// Esta clase no va a poder ser instanciada, es una clase abstracta
class Jugador {
	var skills
	var peso
	var escoba

	constructor(unasSkills, unPeso, unaEscoba) {
		skills = unasSkills
		peso = unPeso
		escoba = unaEscoba
	}
	
	method nivelDeManejoDeEscoba() = skills / peso
	
	// M�todo gen�rico que depende de un m�todo que debe ser redefinido por las subclases
	method velocidad() = 
		self.nivelDeManejoDeEscoba() 
			* escoba.velocidad() 
			* self.coeficienteDeVelocidad()
			
	// M�todo abstracto - s�lo la firma, sin cuerpo
	method coeficienteDeVelocidad()

	method habilidad() = self.velocidad() + skills
	
	method lePasaElTrapoA(unJugador) =
		self.habilidad() > unJugador.habilidad() * 2 
		
	method skills() = skills
	
	method serGolpeado() {
		skills -= 2
		escoba.recibirGolpe()
	}
}

// Si bien tanto Nimbus como saetaDeFuego podr�an hacerse heredar de una clase abstracta Escoba
// que declare los m�todos abstractos velocidad() y recibirGolpe(), la clase Escoba no aportar�a nada,
// porque no habr�a nada de c�digo com�n entre los distintos tipos de escobas.
// Para comunicar en un diagrama de clases, podemos s�lo decir que implementan la interfaz Escoba
// que incluye ambas firmas. Las interfaces no se programan en Wollok. 

class Nimbus {
	var anioFabricacion
	var porcentajeDeSalud

	constructor(unAnioFabricacion) {
		anioFabricacion = unAnioFabricacion
		porcentajeDeSalud = 100
	}

	constructor(unAnioFabricacion, unPorcentajeDeSalud) {
		anioFabricacion = unAnioFabricacion
		porcentajeDeSalud = unPorcentajeDeSalud
	}

	method velocidad() = (80 - self.cantidadDeAniosDesdeFabricacion()) * porcentajeDeSalud/100

	method cantidadDeAniosDesdeFabricacion() = 2017 - anioFabricacion
	
	method salud() = porcentajeDeSalud
	
	method recibirGolpe() {
		porcentajeDeSalud -= 10
	}
}

object saetaDeFuego {
	method velocidad() = 100
	
	method recibirGolpe() {}
}
