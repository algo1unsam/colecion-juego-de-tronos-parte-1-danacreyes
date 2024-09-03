// Daenerys
object dan{
    const property artefactos = #{}
    var property cantidad = 0

    // declaro los artefactos
    method artefactos(elemento) {
      if (artefactos.size() < 2) {
        artefactos.add(elemento)
      }
    }

    // limpio artefactos
    method borrar() {
      self.artefactos().removeAll()
    }

    // Saber los artefactos de Daenerys
    method cantidad() = artefactos.size()
    method objetos() = self.artefactos()
    method objetoEspecial(elemento) {
        if (artefactos.contains(elemento)) {self.artefactos(elemento)}
    }
    
}
// RocaDragón
object rocaDragon {
    var property baul = #{}

    // guardo artefactos en un 'baul'
    method guardar() {
        self.baul().addAll(dan.artefactos())
        dan.borrar()
    }
}

// Objetos 
object espada {

}
object libro {
  
}
object collar {
  
}
object armadura {
  
}