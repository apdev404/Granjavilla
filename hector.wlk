import wollok.game.*
object hector {
  var property ganancias = 0
  var property position = game.origin()
  
  method image() {
    return "player.png"  
  }
  method regar() {
    
  }

  method sembrar(semilla) {
    semilla.position(position)
    game.addVisual(semilla)
  }

  

  method vender() {
    
  }

  method irA(newPos) {
    if(newPos.x().between(0,9) && newPos.y().between(0,9)){
      position = newPos
    }
}
}

