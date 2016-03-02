// Velocímetro de un automóvil digital

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
         let velocidadActual: (actual: Int, velocidadEnCadena: String) = (self.velocidad.rawValue, self.velocidad == Velocidades.Apagado ? String(self.velocidad) :  "Velocidad " + String(self.velocidad).substringFromIndex(String(self.velocidad).startIndex.advancedBy(9)))
        // let velocidadActual: (actual: Int, velocidadEnCadena: String) = (self.velocidad.rawValue, String(self.velocidad))
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            
        case .VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia
            
        case .VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            
        case .VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        return velocidadActual
    }
}

var auto = Auto()

for i in 1...20 {
    var tuplaVelocidad = auto.cambioDeVelocidad()
    print("\(i). \(tuplaVelocidad.actual), \(tuplaVelocidad.velocidadEnCadena)")
}
