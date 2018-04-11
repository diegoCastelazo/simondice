//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("hola \(str)");
var numeroAInvestigar: Int = 35;
var esPrimo : Bool = true;
for n in 2..<numeroAInvestigar{
    print("hola \(n)");
}

var miPrimerNumero : Int?
miPrimerNumero = nil;
miPrimerNumero = 10;
if (miPrimerNumero != nil) {
    print("el valor es \(miPrimerNumero)")
}
else{
    print("No tiene valor")
}

let miPrimerTupla = (10,"juan")

print("tiene \(miPrimerTupla.0) años y se llama \(miPrimerTupla.1)")

let miSegundaTupla = (primerValor: 15, segundoValor: "Pedro")

print("tiene \(miSegundaTupla.primerValor) años y se llama \(miSegundaTupla.segundoValor)")

switch miSegundaTupla {
case (10, _):
    print("Tiene 10 años")
case (11...15,"Pedro"):
    print("Se llama pedro")
default:
    print("No sabemos nada")
}

var miPrimerArreglo:[Int] = [1,2,3];
miPrimerArreglo.append(2);

for i in 0..<miPrimerArreglo.count {
    print("El valor es \(miPrimerArreglo[i])");
}

let miPrimerDiccionario = [
    1: "Kimi",
    2: "Edgar",
    25: "Memo",
    30: "Alex",
    15: "David"
]

var miSegundoDiccionario: [String:String] = [
    "MejorAmigo": "Pedro",
    "PeorEnamigo": "Raul",
    "ProfeFavorito": "Nacho"
]

print("Mi mejor amigo es: \(miSegundoDiccionario["MejorAmigo"])")
miSegundoDiccionario["MejorAmigo"] = "Jose";
print("Mi nuevo mejor amigo es: \(miSegundoDiccionario["MejorAmigo"])")
miSegundoDiccionario["Papa"] = "Felipe"
print("Mi nuevo papa es: \(miSegundoDiccionario["Papa"])")

enum TamanoPerro{
    case Grande
    case Mediano
    case Chico
    case Petit
}

var tamanoMiPerro = TamanoPerro.Chico
tamanoMiPerro = .Grande

enum Vehiculo {
    case Coche(cantidadDePuertas: Int)
    case Avion(cantidadDeTurbinas: Int)
    case Camion
}

var miVehiculo = Vehiculo.Avion(cantidadDeTurbinas: 2)

switch miVehiculo {
case .Avion:
    print("Es un avion")
case .Coche:
    print("Es un coche")
case .Camion:
    print("Es un camion")
default:
    print("No se que es")
}

func printHola(){
    print("Hola")
}

printHola();

func sumerDosNumeros(numeroUno numeroA: Int, numeroDos numeroB: Int){
    print("La suma de \(numeroA) con \(numeroB) es \(numeroA + numeroB)")
}

sumerDosNumeros(numeroUno: 4, numeroDos: 5)

func sumarDosNumerosRet(numeroUno: Int, numeroDos: Int)-> Int{
    return numeroUno + numeroDos
}

let suma = sumarDosNumerosRet(numeroUno: 10, numeroDos: 20)

func sumaYProductoNumeros(primerNumero: Int, segundoNumero: Int) -> (suma: Int,multiplicacion: Int){
    return(primerNumero + segundoNumero, primerNumero * segundoNumero)
}

let ambos = sumaYProductoNumeros(primerNumero: 3, segundoNumero: 8)
print("La suma es: \(ambos.suma) y el producto es: \(ambos.1)")

var numeroA = 3
var numeroB = 8

func sumaYProductoNumeroImp(primerNumero: inout Int, segundoNumero: inout Int){
    primerNumero = primerNumero + segundoNumero
    segundoNumero = (primerNumero - segundoNumero) * segundoNumero
}

sumaYProductoNumeroImp(primerNumero: &numeroA, segundoNumero: &numeroB)
print("La suma es: \(numeroA) y el producto es: \(numeroB)")


var arregloNumeros: [Int] = [30,20,10,23,50];
arregloNumeros.sort(by: {
    (a: Int, b: Int) in return a > b
});

class Animal {
    var peso: Double = 0
    var edad: Int = 0
    var nombre: String = ""
    
    func comer(cantidad: Double){
        print("Comiendo \(cantidad) g.")
    }
    
    func descripcion() -> String{
        return "Se llama \(nombre), pesa \(peso) g, y tiene \(edad) anios"
    }
    
    func hacerSonido() {
        print("")
    }
}

var animal: Animal = Animal()
animal.nombre = "pez"
print( animal.descripcion());

class Perro : Animal {
    override func descripcion() -> String {
        return super.descripcion() + " y es un perro"
    }
}

var perrito: Perro = Perro()

print( perrito.descripcion());

