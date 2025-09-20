import paquete.*
import mensajeros.*
import transportes.*
import destinos.*

object empresa {
  const mensajeros = []
  const paquetesEnviados = []
  const paquetesPendientes = []

  method enviarPaquete(unPaquete){
    if(self.algunMensajeroPuedeEntregar(unPaquete)){
          paquetesEnviados.add(unPaquete)
    }
    else{
      paquetesPendientes.add(unPaquete)
    }
  }
  method mensajeros(){
    return mensajeros
  }
  method contratar(unMensajero){
    mensajeros.add(unMensajero)
  }
  method despedir(unMensajero){
    mensajeros.remove(unMensajero)
  }
  method despedirATodos(){
    mensajeros.clear()
  }
  method esMensajeriaGrande(){
    return mensajeros.size() > 2
  }

  method puedeSerEntregadoPorElPrimero(unPaquete){
    return if(not mensajeros.isEmpty()){
     unPaquete.puedeSerEntregado(mensajeros.first())
    }
    else{
      false
    }
  }
  method pesoDelUltimo(){
    return mensajeros.last().peso()
  }
  method algunMensajeroPuedeEntregar(unPaquete){
    return mensajeros.any({m => unPaquete.puedeSerEntregado(m)})
  }
  method todosLosQuePuedenLlevar(unPaquete){
    return mensajeros.filter({m => unPaquete.puedeSerEntregado(m)})
  }
  method tieneSobrepeso(){
    return mensajeros.sum({m => m.peso()}) / mensajeros.size() > 500
    //mensajeros.map({m => m.peso()}).sum() / mensajeros.size() > 500
  }

  method facturacion(){
    return paquetesEnviados.sum({p => p.precio()})
  }
  method enviar(conjuntoDePaquetes){
    conjuntoDePaquetes.forEach({p => self.enviarPaquete(p)})
  }
  method enviarPaquetePendienteMasCaro(){
    if(self.algunMensajeroPuedeEntregar(self.paqueteMasCaroPendiente())){
      self.enviarPaquete(self.paqueteMasCaroPendiente())
      paquetesPendientes.remove(self.paqueteMasCaroPendiente())
    }
  }
  method paqueteMasCaroPendiente(){
    return paquetesPendientes.max({p => p.precio()} )
  }
  method paquetesEnviados(){
    return paquetesEnviados
  }
  method paquetesPendientes(){
    return paquetesPendientes
  }
}


