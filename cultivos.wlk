
import wollok.game.*
import hector.*
import main.*
import config.*


object sem_maiz {

}

object sem_trigo {
  
}

object sem_tomaco {
  
}

class cultivos{
    var etapa = null
    var property position = self.posicion() 
    const property etapaimagen = []
    method image() = null
    method regar() {
      
    }
    method posicion() {
      return hector.position()
    }
    

}

object maiz inherits cultivos(etapa = 0,etapaimagen = ['corn_baby.png', 'corn_adult.png']){
    override method image() = etapaimagen.get(etapa)
    override method regar() {
      etapa=1
    }
}
 

object trigo inherits cultivos(etapa = 0){
    override method image() {
      return if(etapa == 0){
        'wheat_0.png'
      }else if(etapa == 1){
        'wheat_1.png' 
      }else if(etapa==2){
        'wheat_2.png'
      }else 'wheat_3.png'


    }
    override method regar(){
      if(etapa !=3){
        etapa+=1
      }else etapa=0
      
    }
}





object tomaco inherits cultivos(etapa = 2){
    override method image() = 'tomaco.png'
    override method regar() {
      position.up(1)
     
    }
}


