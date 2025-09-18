import destinos.*
import mensajeros.*
object bicicleta {
  method pesoTotal(){
    return 5
  }
}
object camion {
  var peso = 500
  var acoplados = 1

  method peso(){
    return peso
  }
  method acoplados(unaCantidad){
    acoplados = unaCantidad
  }
  method pesoTotal(){
    return peso * acoplados
  }
}
