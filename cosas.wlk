object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumblebee {
    var esAuto = false
    method cambiaDeForma(){
        if (esAuto){
            esAuto = false
        }
        else{
            esAuto = true
        }
        
    }
    method peso() = 800
    method peligrosidad(){
        if (esAuto){
            return 15
        }
        else{
            return 30
        
        }
    }
}

object paqueteDeLadrillos {
  var cantidad = 0
  method cantidadDeLadrillos(numero){
    cantidad = numero
  }
  method peso(){
    return cantidad * 2
  }
  method peligrosidad() = 2
}

object arenaAGranel {
  var peso = 0
  method name(numero){ 
    peso = numero
    }
  method peligrosidad() = 1
}

object bateriaAntiaerea {
  var estaConMisiles = true
  method cambiarEstadoDeMisiles(){
     if (estaConMisiles){
        estaConMisiles = false
     }
     else{
        estaConMisiles = true
     }
     
  }
  method peso(){
    if (estaConMisiles){
        return 300
    }
    else{
        return 200
    }
  }
  method peligrosidad(){
    if (estaConMisiles){
        return 100
    }
    else{
        return 0
    }
  } 
}

object contenedorPortuario {
    const contenido = []
    method peso() {
      100 + contenido.sum({cosa => cosa.peso()})
    }
    method peligrosidad() {
      contenido.max({cosa => cosa.peligrosidad()})
    }
}

object residuosRadioactivos{
    var peso = 0
    method peso() = peso
    method cambiarPeso(num){
        peso = num
    }
    method peligrosidad() = 200
}
object embalajeDeSeguridad {
  const cosaEnvuelta = []
  method peso(){
    return cosaEnvuelta.map({cosa => cosa.peso()})
  }
  method peligrosidad() {
    return cosaEnvuelta.map({cosa => cosa.peligrosidad()}) / 2
  }
}