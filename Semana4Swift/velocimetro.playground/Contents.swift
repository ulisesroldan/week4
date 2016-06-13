//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial :Velocidades){
        self = velocidadInicial
    }
}


class Auto{
    var velocidad : Velocidades
    init() {
        let velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        self.velocidad = velocidad
    }
    
        //Velocidades(velocidadinicial: "Apagado")
    //print(velocidad)
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var actual : Int
        var velocidadEnCadena : String
        switch self.velocidad {
        case .Apagado:
               self.velocidad = Velocidades.VelocidadBaja
               velocidadEnCadena = "Velocidad baja"
        case .VelocidadBaja:
                self.velocidad = Velocidades.VelocidadMedia
                velocidadEnCadena = "Velocidad media"
        case .VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                velocidadEnCadena = "Velocidad alta"
        case .VelocidadAlta:
                self.velocidad = Velocidades.VelocidadMedia
                velocidadEnCadena = "Velocidad media"
        default:
            actual = 0
        }
        actual = self.velocidad.rawValue
        return (actual, velocidadEnCadena)
    }
}
var auto = Auto()
var iteraciones : Int
var tuplaVelocidades : (actual : Int, velocidadEnCadena : String)

auto.velocidad

for iteraciones in (1...20){
    if iteraciones == 1 {
        auto = Auto.init()
        let tuplaVelocidades = (actual: auto.velocidad.rawValue, velocidadeEnCadena: auto.velocidad)
        print("\(tuplaVelocidades.actual),\(tuplaVelocidades.velocidadeEnCadena)")
    }
    else{
        let tuplaVelocidades = auto.cambioDeVelocidad()
        print("\(tuplaVelocidades.actual),\(tuplaVelocidades.velocidadEnCadena)")
        }
    
}




