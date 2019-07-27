import UIKit

 enum Velocidades: Int {
	case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
	init(velocidadInicial: Velocidades){
		self = velocidadInicial
	}
}

class Auto {
	var velocidad: Velocidades
	init( ){
		velocidad.init(velocidadInicial: Apagado)
	} 
	func cambioDeVelocidad( ) -> (actual: Int, velocidadEnCadena : String){
		switch velocidad{
		case Velocidades.Apagado:
			velocidad = Velocidades.VelocidadBaja
			velocidadEnCadena = "Velocidad Baja"
		case Velocidades.VelocidadBaja, Velocidades.VelocidadAlta:
			velocidad = Velocidades.VelocidadMedia
			velocidadEnCadena = "Velocidad Media"
		case Velocidades.VelocidadMedia:
			velocidad = Velocidades.VelocidadAlta
			velocidadEnCadena = "Velocidad Alta"
		}
		actual = velocidad.rawValue
		return (actual, velocidadEnCadena)
	}

var auto : Auto( )
for i in 0...19 {
	var (actual, velocidadEnCadena) = auto.cambioDeVelocidad( )
	print(actual, velocidadEnCadena) 
}