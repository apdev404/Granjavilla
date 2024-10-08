
//sembrar 




object sem_maiz {

}

object sem_trigo {
  
}

object sem_tomaco {
  
}

class cultivos{
    var etapa = null
    method image() = null
    method regar() {
      if(etapa == 0){
        etapa+=1
      }
    }
    

}

object maiz inherits cultivos(etapa = 0){
    override method image() = 'corn_baby.png'

}
 
object trigo inherits cultivos(etapa = 1){
    override method image() = 'wheat_0.png'

}

object tomaco inherits cultivos(etapa = 2){
    override method image() = 'tomaco.png'
}


