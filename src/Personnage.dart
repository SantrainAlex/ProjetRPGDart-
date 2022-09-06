import 'dart:math';
import 'Arme.dart';

Random rdn = new Random();

class personnage {
  final String name;
  double pv;
  double mana;
  int tourMax;
  int nbrTour;
  int arme;
  int armeSpe;
  personnage(
      this.name, this.pv, this.mana, this.tourMax, this.nbrTour, this.arme, this.armeSpe);

  printTour() {
    return 'Round N° $nbrTour ';
  }

  printPerso() {
    return 'name = $name  pv = $pv  mana = $mana ';
  }

  double recupPv() {
    double resultPv = this.pv / 2;
    print("$name augmente c'est pv ");
    this.mana = 0;
    this.pv + resultPv;
    return this.pv;
  }

  double att(personnage adv) {
    switch (this.arme) {
      case 1:
        this.arme = 1;
        break;
      case 2:
        Baton monArme = Baton();
        this.arme = monArme.PointAtt;
        switch (this.armeSpe) {
          case 1:
            barbele monArme = barbele();
            this.arme = monArme.PointAtt;
        }
        break;
      case 3:
        couteau monArme = couteau();
        this.arme = monArme.PointAtt;
        break;
      case 4:
        fusil monArme = fusil();
        this.arme = monArme.PointAtt;
        break;
      case 5:
        pompe monArme = pompe();
        this.arme = monArme.PointAtt;
        break;
      default:
        this.arme = 1;
    }

    int att = this.arme + rdn.nextInt(10 - 1);
    if (this.tourMax == 5) {
      int attDeux = 1 + (rdn.nextInt(10));

      adv.pv = adv.pv - attDeux;
      this.tourMax = 0;
    }
    adv.pv = adv.pv - att;
    String advName = adv.name;
    print("$name att $advName");
    return adv.pv;
  }

  double controlPv(adv) {
    this.mana = this.mana + 2;
    if (this.pv <= 30 && this.mana >= 100) {
      return this.recupPv();
    } else {
      return this.att(adv);
    }
  }
}
