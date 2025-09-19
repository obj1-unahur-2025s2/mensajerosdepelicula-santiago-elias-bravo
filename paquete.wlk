import mensajeros.*
import destinos.*
object paquete {
    var destino = matrix
    var estaPago = false
  method cambiarDestino(unDestino){
    destino = unDestino
  }
  method estaPago(){
    return estaPago
  }
  method registrarPago(){
    estaPago = true
  }
  method puedeSerEntregado(unMensajero){
    return estaPago &&
           destino.puedePasar(unMensajero)    
  }
  method precio(){
    return 50
  }
}

object paquetito {
  var destino = matrix
  method cambiarDestino(unDestino){
    destino = unDestino
  }
  method estaPago(){
    return true
  }
  method precio(){
    return 0
  }
  method puedeSerEntregado(unMensajero){
    return true
  }
}

object paqueton{
  var importePagado = 0
  const destinos = []

  method agregarDestino(unDestino){
    destinos.add(unDestino)
  }
  method precio(){
    return destinos.size() * 100
  }
  method recibirPago(unValor){
    importePagado = (importePagado + unValor).min(self.precio())
  }
  method estaPago(){
    return importePagado == self.precio()
  }
  method puedeSerEntregado(unMensajero){
    return destinos.all({destino => destino.puedePasar(unMensajero)}) &&
            self.estaPago()
  }

}