object camion {
    const cosasDelCamion = []
    
    method pesoTotal(){
        return 1000 + cosasDelCamion.sum({cosa => cosa.peso()})
    }
    method cargar(cosa){
        cosasDelCamion.add(cosa)
    }
    method descargar(cosa){
        cosasDelCamion.remove(cosa)
        }
    method pesoEsPar(){
        return cosasDelCamion.map({cosa => cosa.peso()}) 

    }
    method algoPesa(numero){
        return cosasDelCamion.map({cosa => cosa.peso()}) == numero
    }
}