import Foundation
// Números romanos
func numerosRomanos(numeroParam: Int, nivelParam: Int) -> String{
  if numeroParam > 3999 {
    return "Cáculo superado, no es posible más ayá del 3999"
  }
  var numero = numeroParam
  var nivel = nivelParam
  var numeroRomano =  ""
  var repUno = "", repCinco = "", repDiez = ""

  nivel += 1

  switch nivel {
    case 1:
      repUno =  "I"
      repCinco = "V"
      repDiez = "X"
    case 2:
      repUno = "X"
      repCinco = "L"
      repDiez = "C"
    case 3:
      repUno = "C"
      repCinco = "D"
      repDiez = "M"
    case 4:
      repUno = "M"
      repCinco = "D"
      repDiez = "-"
    default:
      print("Nivel no permitido")
  }
  //print("Nivel \(nivel) Número: \(numero)")
  let numeroUnidad = numero % 10
  numero /= 10
  switch numeroUnidad
   {
    case 1: 
     numeroRomano += repUno
    case 2: 
     numeroRomano += "\(repUno)\(repUno)"
    case 3: 
     numeroRomano += "\(repUno)\(repUno)\(repUno)"
    case 4:
     numeroRomano += "\(repUno)\(repCinco)"
    case 5:
     numeroRomano += "\(repCinco)"
    case 6:
     numeroRomano += "\(repCinco)\(repUno)"
    case 7: 
     numeroRomano += "\(repCinco)\(repUno)\(repUno)"
    case 8: 
     numeroRomano += "\(repCinco)\(repUno)\(repUno)\(repUno)"
    case 9:
     numeroRomano += "\(repUno)\(repDiez)"
     default:
     numeroRomano += ""
   }
  
  if numero == 0 {
    return numeroRomano
  } else {
    numeroRomano = "\(numerosRomanos(numeroParam: numero, nivelParam: nivel))\(numeroRomano)"
    return numeroRomano
  }
}

// Llamada a la función
print(numerosRomanos(numeroParam: 3981, nivelParam: 0))
