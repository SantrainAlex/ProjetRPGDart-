class Arme {
  String nom;
  int PointAtt;

  Arme(this.nom, this.PointAtt);
}

class Baton implements Arme {
  @override
  int PointAtt = 2;

  @override
  String nom = 'baton';
}

class barbele implements Baton {
  @override
  int PointAtt = 3;

  @override
  String nom = 'baton avec barbelé';
}

class couteau implements Arme {
  @override
  int PointAtt = 3;

  @override
  String nom = 'couteau';
}

class fusil implements Arme {
  @override
  int PointAtt = 4;

  @override
  String nom = 'fusil';
}

class pompe implements Arme {
  @override
  int PointAtt = 5;

  @override
  String nom = 'pompe';
}
