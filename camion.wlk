object camion {
    const cosasDelCamion = []
    
    method pesoTotal(){
        return 1000 + self.pesoDeLasCosas()
    }
    method pesoDeLasCosas(){
        return cosasDelCamion.sum({cosa => cosa.peso()})
    }
    method cargar(cosa){
        cosasDelCamion.add(cosa)
    }
    method descargar(cosa){
        cosasDelCamion.remove(cosa)
        }
    method pesoEsPar(){
        return cosasDelCamion.any({cosa => cosa.peso()}) 

    }
    method algoPesa(numero){
        return cosasDelCamion.any({cosa => cosa.peso() == numero}) 
    }
    method puedeCircularPorRuta(limite){
        //qsy
        //return self.pesoTotal() < 2500 and self.peligrosiadExcedeLimite(limite)
    }
    method peligrosiadExcedeLimite(limite) {
      return cosasDelCamion.any({cosa => cosa.peligrosidad() > limite})
    }
}