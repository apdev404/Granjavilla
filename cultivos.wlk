
import wollok.game.*
import hector.*
import main.*
import config.*



class Cultivos{
    var etapa = 0
    var property position 
    method image() = null
    
}

class Maiz inherits Cultivos(){
    const property etapaimagen = ['corn_baby.png', 'corn_adult.png']
    override method image() = etapaimagen.get(etapa)
    method regar() {
      etapa=1
    }
}
 

class Trigo inherits Cultivos(){
    override method image() {
      return if(etapa == 0){
        'wheat_0.png'
      }else if(etapa == 1){
        'wheat_1.png' 
      }else if(etapa==2){
        'wheat_2.png'
      }else 'wheat_3.png'
    }

    method regar(){
      if(etapa !=3){
        etapa+=1
      }else etapa=0
    }
}

class Tomaco inherits Cultivos(){
    override method image() = 'tomaco.png'
    method regar() {
      if(position.y().between(0, 18)){
        position = self.position().up(1)
      }else position = self.position().down(19)
    }
}


