object luisa {
    // var por que puede cambiar. Guarda una REFERENCIA al personaje que maneja ahora//
    // Arranca con mario, como dice el enunciado. //
    var personajeActivo = mario

    // Metodo de indicacion: cambia el estado de luisa.//
    // El parametro es el personaje nuevo (nombre exacto del glosario) que va a manejar.// 
    method cambiarPersonaje(nuevoPersonaje) {
        personajeActivo = nuevoPersonaje
    }

    // Otro metodo de indicacion: No devuelve nada: solo "hace" //
    method aparece(unElemento){
    // Le manda el mensaje "encontrar" a su personaje activo. //
    // No le importa si es floki o mario: los dos entienden encontrar(encontrar) //
    // Eso es polimorfismo: el mismo mensaje, distinto comportamiento según el receptor. //
        personajeActivo.encontrar(unElemento)
    }
}

object floki {
    var armaPrincipal = ballesta
    
    method cambiarDeArma(armaDiferente) {
        // Floki puede cambiar de arma. //
        // Si la nueva arma es una ballesta, la guarda en su mochila. //
        // Si la nueva arma es una jabalina, la usa para cazar. //
        armaPrincipal = armaDiferente
    }

    method encontrar(unElemento) {
        // Floki tiene su propia forma de encontrar elementos. //
        // Por ejemplo, si encuentra una ballesta, la guarda en su mochila. //
        // Si encuentra un castillo, lo destruye. //
        // Si encuentra una jabalina, la usa para cazar. //)) 
        if (armaPrincipal.estaCargada()) {
            unElemento.recibirAtaque(armaPrincipal.potencia())
            armaPrincipal.usar()
        }
    }
}

object mario {

}

object ballesta {
    var flechas = 10

    method usar() {
        flechas = flechas - 1
    }

    method estaCargada() {
        return flechas > 0
    }

    method potencia() {
        return 4
    }
}

object jabalina {
    var cargada = true

    method usar() {
        cargada = false
    }

    method estaCargada() {
        return cargada
    }

    method potencia() {
        return 30
    }
}

object castillo {
    var defesa = 150

    method altura() {
        return 20
    }

    method nivelDeDefensa() {
        return defesa
    }

    method recibirAtaque(potencia) {
        defesa = defesa - potencia
    }

    method recibirTrabajo() {
        defesa = (defesa + 20).min(200)
    }

    method valorOtorgado() {
        return defesa / 5
    }
}

object aurora {
    var viva = true

    method altura() {
        return 1
    }

    method estaViva() = viva

    method recibirAtaque(potencia) {
        if (potencia >= 10) {
            viva = false
        }
    }
}

object tipa {

}
