mixin Hechicero {
  void lanzarHechizo() {
    print("¡Lanzo un hechizo mágico!");
  }
}

mixin Guerrero {
  void atacarConArma() {
    print("¡Ataco con mi espada!");
  }
}

mixin Sanador {
  void curar() {
    print("¡Curo a un aliado!");
  }
}

class Personaje {
  String nombre;
  Personaje(this.nombre);

  void presentar() {
    print("Soy $nombre.");
  }
}

class Mago extends Personaje with Hechicero, Sanador {
  Mago(String nombre) : super(nombre);
}

class Luchador extends Personaje with Guerrero {
  Luchador(String nombre) : super(nombre);
}

class Paladin extends Personaje with Guerrero, Sanador {
  Paladin(String nombre) : super(nombre);
}

void main() {
  List<Personaje> personajes = [
    Mago("Merlín"),
    Luchador("Conan"),
    Paladin("Arturo")
  ];

  for (var p in personajes) {
    p.presentar();

    if (p is Hechicero) (p as Hechicero).lanzarHechizo();
    if (p is Guerrero) (p as Guerrero).atacarConArma();
    if (p is Sanador) (p as Sanador).curar();

    print("-------------");
  }
}
