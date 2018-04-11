//: Playground - noun: a place where people can play
/*
1)Puedes regresar de una funcion varios valores como una dupla,
  tienes enums con propiedades,
  los switch son mas inteligentes,
  a las variables let no les puedes cambiar de valor asi que son mas seguras
2) Xcode
3) Usando los headers de objective C los importas y ya puedes usarlo
*/
import UIKit

let arreglo = [1,2,3,4,4,1];



func sumaM(M: Int, arreglo: [Int]) -> Int {
    var res=0;
    for i in 0..<arreglo.count{
        if(arreglo.contains(M - arreglo[i])){
            res = res + 1;
        }
    }
    res = res/2;
    return res;
}
// Este metodo devuelve solo un par de numero por ejemplo si hay un 1 y dos 4 solo te regresaria una pareja {1,4}
var res = sumaM(M: 5, arreglo: arreglo);

var hola = "hola como estas el dia de hoy";

func palabras(texto: String) -> (cantidadPalabras: Int, primeraPalabra: String){
    var res = texto.components(separatedBy: " ");
    return(res.count,res[0]);
}

var res2 = palabras(texto: hola);

enum deportes {
    case Futbol(tamanoBalon: Int)
    case CarrerasDeAuto(nombreFormula: String)
    case Hockey(sobreHielo: Bool)
    case Basket(numeroDeJugadores: Int)
    case Tenis(singles: Bool)
}

func regresaDeporte(deporte: deportes) -> String{
    var res = "No se que deporte es";
    switch deporte {
    case .Futbol(tamanoBalon: 0..<5 ):
        res = "Futbol para niños";
        break;
    case .Futbol(tamanoBalon: 5...):
        res = "Futbol para adultos"
    case .CarrerasDeAuto(nombreFormula: "Formula 1"):
        res = "Formula 1";
        break;
    case .CarrerasDeAuto(nombreFormula: "Carreras de formula 1"):
        res = "Carreras de formula 1";
        break;
    case .CarrerasDeAuto:
        res = "Carreras que no conocemos"
    case .Hockey(sobreHielo: true):
        res = "Hockey sobre hielo";
        break;
    case .Hockey(sobreHielo: false):
        res = "Hockey pero no es real"
        break;
    case .Basket(numeroDeJugadores: 5):
        res = "Basket profesional"
        break;
    case .Basket:
        res = "No es basket profesional"
        break;
    case .Tenis(singles: true):
        res = "Siempre gana Nadal";
        break;
    case .Tenis(singles: false):
        res = "Siempre ganan las hermanas Williams";
    default:
        res = "No se que deporte es";
    }
    return res;
}

var enum1 = deportes.Futbol(tamanoBalon: 5);
regresaDeporte(deporte: enum1);

enum1 = deportes.Futbol(tamanoBalon: 2);
regresaDeporte(deporte: enum1);

enum1 = deportes.CarrerasDeAuto(nombreFormula: "Formula 1")
regresaDeporte(deporte: enum1);

enum1 = deportes.CarrerasDeAuto(nombreFormula: "Carreras de formula 1")
regresaDeporte(deporte: enum1);

enum1 = deportes.CarrerasDeAuto(nombreFormula: "Carreras de karts")
regresaDeporte(deporte: enum1);

enum1 = deportes.Hockey(sobreHielo: true)
regresaDeporte(deporte: enum1);

enum1 = deportes.Hockey(sobreHielo: false)
regresaDeporte(deporte: enum1);

enum1 = deportes.Basket(numeroDeJugadores: 5)
regresaDeporte(deporte: enum1);

enum1 = deportes.Basket(numeroDeJugadores: 6)
regresaDeporte(deporte: enum1);

enum1 = deportes.Tenis(singles: true)
regresaDeporte(deporte: enum1);

enum1 = deportes.Tenis(singles: false)
regresaDeporte(deporte: enum1);
