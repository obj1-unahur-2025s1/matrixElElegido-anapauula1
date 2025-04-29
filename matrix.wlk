object neo{
    var energia = 100
    method esElElegido() = true
    method salta(){
        energia = energia / 2
    }
    method vitalidad(){
        energia * 0.1
        // me dice q vitalidad vale esto
        // metodo de indicacion
    }
}
object morfeo{
    var vitalidad = 8
    var estaDescansado = true
    method esElElegido() = false
    method salta(){
        vitalidad = vitalidad - 1
        estaDescansado = not estaDescansado
        // porque esta cansado cuando salta
    }
    method vitalidad() = vitalidad 
    // para que haya "polimorfismo"
    // aparte si le pregunto me tiene que saber responder
} 
object trinity{
    method vitalidad() = 0
    // siempre es cero
    method esElElegido() = false
    method saltar() { } // metodo vacio
    // porque no le afecta en nada saltar 
}
object nave{
    const pasajeros = [neo,morfeo,trinity] // lista vacia hacemos
    // ¿cuantos pasajeros hay en la nave?
    method cantidadPasajeros() = pasajeros.size()
    // el pasajero de mayor vitalidad
    method mayorVitalidad(){
        // devuelve el objeto
        return pasajeros.max{p => p.vitalidad()}
        // max se utiliza para la mayor vitalidad
        // p es una variable nueva que se crea
        // recorre y pregunta la vitalidad
    }
    method estaEquilibrado(){
        return self.mayorVitalidad() < self.menorVitalidad() ** 2
        // el mas grande NO debe de tener el doble 
        // del mas chico
    }
    method menorVitalidad(){
        return pasajeros.min{p => p.vitalidad()}
    }
    method estaElElegido(){
       return pasajeros.any({p => p.estaElElegido()})
       // any = metodo de listas que ya viene
       // para ver si algun objeto cumple una condicion
    }
    

}