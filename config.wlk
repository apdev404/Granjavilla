import hector.*
import cultivos.*
import wollok.game.*
object config {
	method configurarTeclas() {
			keyboard.m().onPressDo({hector.sembrar(maiz)})
			keyboard.t().onPressDo({hector.sembrar(trigo)})
			keyboard.o().onPressDo({hector.sembrar(tomaco)})

            keyboard.up().onPressDo({hector.irA(hector.position().up(1))})
            keyboard.down().onPressDo({hector.irA(hector.position().down(1))})
            keyboard.right().onPressDo({hector.irA(hector.position().right(1))})
            keyboard.left().onPressDo({hector.irA(hector.position().left(1))})
	}
}