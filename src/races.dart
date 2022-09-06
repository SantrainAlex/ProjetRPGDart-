class races {
  String nom;
  int aventage;

  races(this.nom, this.aventage);
}

class orc implements races {
  @override
  int aventage = 20;

  @override
  String nom = "orc";
}

class elfe implements races {
  @override
  int aventage = 30;

  @override
  String nom = "elfe";
}

class archer implements races {
  @override
  int aventage = 50;

  @override
  String nom = "archer";
}
