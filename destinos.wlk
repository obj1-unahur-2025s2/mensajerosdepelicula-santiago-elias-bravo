import mensajeros.*
import transportes.*
object puenteBrooklyn {
  method puedePasar(mensajero){
    return mensajero.pesoConVehiculo() <= 1000
  }
}
object matrix {
  method puedePasar(mensajero){
    return mensajero.puedeLlamar()
  }
}