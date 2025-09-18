import mensajeros.*
import transportes.*
object puenteBrooklyn {
  var dejaPasar = false
  var paquetePago = true
  method puedePasar(unPeso){
    if(unPeso <= 1000  and paquetePago){
      dejaPasar = true
    }
    return dejaPasar
  }
  method estaPago(){
    return paquetePago
  }
  method noEstaPago(){
    paquetePago = false
  }
}
object matrix {
  var dejaPasar = false
  var paquetePago = true

  method puedePasar(puedeLlamar){
    if (puedeLlamar and paquetePago){
      dejaPasar = true
    }
    return dejaPasar
  }
  method estaPago(){
    return paquetePago
  }
  method noEstaPago(){
    paquetePago = false
  }
}