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
