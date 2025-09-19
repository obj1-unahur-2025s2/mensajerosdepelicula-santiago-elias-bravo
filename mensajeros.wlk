import destinos.*
import transportes.*

object roberto {
  var vehiculo = bicicleta
  method peso(){
    return 90 + vehiculo.peso()
  }
  method cambiarVehiculo(unVehiculo){
    vehiculo = unVehiculo
  }
  method puedeLlamar(){
    return false
  }

}
object chuckNorris {
   method peso(){
    return 80
  }
  method puedeLlamar(){
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
  method cargarCredito(){
    tieneCredito = true
  }
  method puedeLlamar(){
    return tieneCredito
  }
}
