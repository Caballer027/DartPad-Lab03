mixin Volador {
  void volar() {
    print("Estoy volando...");
  }
}

mixin Navegador {
  void navegar() {
    print("Estoy navegando...");
  }
}

mixin Acelerador {
  void acelerar() {
    print("Estoy acelerando...");
  }
}

class Vehiculo {
  void mostrarTipo() {
    print("Soy un vehículo.");
  }
}

class Avion extends Vehiculo with Volador, Acelerador {
  @override
  void mostrarTipo() {
    print("Soy un avión.");
  }
}

class Bote extends Vehiculo with Navegador, Acelerador {
  @override
  void mostrarTipo() {
    print("Soy un bote.");
  }
}

class Auto extends Vehiculo with Acelerador {
  @override
  void mostrarTipo() {
    print("Soy un auto.");
  }
}

void main() {
  List<Vehiculo> vehiculos = [Avion(), Bote(), Auto()];

  for (var v in vehiculos) {
    v.mostrarTipo();

    if (v is Volador) (v as Volador).volar();
    if (v is Navegador) (v as Navegador).navegar();
    if (v is Acelerador) (v as Acelerador).acelerar();

    print("-------------");
  }
}
