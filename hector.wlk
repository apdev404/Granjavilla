import wollok.game.*
import cultivos.*
object hector {
  var property ganancias = 0
  var property position = game.origin()
  
  method image() {
    return "player.png"  
  }
 

  method sembrar(semilla) {
    if(game.getObjectsIn(self.position()).size()==1){
        game.addVisual(semilla)
    }
  }

  

  method vender() {
    
  }

  method irA(newPos) {
    if(newPos.x().between(0,9) && newPos.y().between(0,9)){
      position = newPos
    }
}
}

