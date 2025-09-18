import mensajeros.*
import transportes.*
import destinos.*

object empresa {
  const mensajeros = [roberto, neo]
  var cantidadMensajeros = mensajeros.size()

  method contratarA(unMensajero){
    mensajeros.add(unMensajero)
  }
  method despedirA(unMensajero){
    mensajeros.remove(unMensajero)
  }
  method despedirATodos(){
    mensajeros.clear()
  }
  method esMensajeriaGrande(){
    return cantidadMensajeros > 2
  }

  method puedeSerEntregadoPorElPrimero(destino){
    return destino.puedePasar(mensajeros.first())
  }

  method pesoDelUltimo(){
    return mensajeros.last().peso()
  }
}


