//: Playground - noun: a place where people can play

import UIKit

//Declaraciòn de la Enumeración, se Consideran las velocidades y el valor numérico
enum Velocidades : Int {
    //Se Asignan los valores y los rawValues
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    //Se crea el inicializador de la enumeraciòn con un valor a recibir
    init(velocidadInicial :Velocidades){
        self = velocidadInicial
    }
}

//Se crea la Clase Auto
class Auto{
    //se declara un atributo de la clase de tipo enumeraciòn Velocidades
    var velocidad : Velocidades
    //Se crea el inicializador de la clase Auto con el valor inicializado en Apagado de la Enumeración
    init() {
        let velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        //Se asigna el valor de inicializaciòn de la enumeraciòn al atributo de la calse.
        self.velocidad = velocidad
    }
    //Se crea la función de cambio de velocidad que regresa una tupla de valor y velocidad, identifica en que velocidad se encuentra y cambia de Apagado a velocidad baja y asì sucesivamente incrementando la velocidad. Solo en el caso de Velocidad alta, regresa a velocidad media.
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
        //asigna el valor de rawValue a la variable local para ser devuelta por el return de la funciòn
        actual = self.velocidad.rawValue
        //Se regresa una tupla de valor y velocidad
        return (actual, velocidadEnCadena)
    }
}
//Se crea una instancia de la clase Auto
var auto = Auto()
var iteraciones : Int
//Se declara una variable tupla para el manekjo del retorno de la función
var tuplaVelocidades : (actual : Int, velocidadEnCadena : String)

//Se implementa un ciclo for de 1 a 20 iteraciones
for iteraciones in (1...20){
    if iteraciones == 1 {
        //Solo para el caso de la primera iteración se hace el llamado al inicializador de la clase y se asignan los valores a la tupla para su impresiòn.
        auto = Auto.init()
        let tuplaVelocidades = (actual: auto.velocidad.rawValue, velocidadeEnCadena: auto.velocidad)
        print("\(tuplaVelocidades.actual),\(tuplaVelocidades.velocidadeEnCadena)")
    }
    else{
        //Se asignan los valores de resultado de la funciòn a la variable tupla para su impresón
        let tuplaVelocidades = auto.cambioDeVelocidad()
        print("\(tuplaVelocidades.actual),\(tuplaVelocidades.velocidadEnCadena)")
        }
    
}




