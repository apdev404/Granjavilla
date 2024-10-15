import hector.*
import cultivos.*
import wollok.game.*
object config {
	method configurarTeclas() {
			keyboard.m().onPressDo({hector.sembrar(new Maiz(position = hector.position()))})
			keyboard.t().onPressDo({hector.sembrar(new Trigo(position = hector.position()))})
			keyboard.o().onPressDo({hector.sembrar(new Tomaco(position = hector.position()))})

            keyboard.up().onPressDo({hector.irA(hector.position().up(1))})
            keyboard.down().onPressDo({hector.irA(hector.position().down(1))})
            keyboard.right().onPressDo({hector.irA(hector.position().right(1))})
            keyboard.left().onPressDo({hector.irA(hector.position().left(1))})
	}
}