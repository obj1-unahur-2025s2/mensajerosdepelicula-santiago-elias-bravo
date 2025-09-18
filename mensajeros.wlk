import destinos.*
import transportes.*

object roberto {
  var peso = 90
  var vehiculo = bicicleta
  method peso(){
    return peso
  }
  method pesoConVehiculo(){
    return peso + vehiculo.pesoTotal()
  }
  method cambiarVehiculo(unVehiculo){
    vehiculo = unVehiculo
  }

}
object chuckNorris {
   method peso(){
    return 80
  }
  method tieneCredito(){
    return true
  }
}
object neo {
  var tieneCredito = true
  method peso(){
    return 0
  }
  method sinSaldo(){
    tieneCredito = false
  }
  method tieneCredito(){
    return tieneCredito
  }
}
