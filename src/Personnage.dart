import 'dart:math';
import 'Arme.dart';

Random rdn = new Random();

class personnage {
  final String name;
  double pv;
  double mana;
  int tourMax;
  int nbrTour;
  double arme;
  personnage(
      this.name, this.pv, this.mana, this.tourMax, this.nbrTour, this.arme);

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
    double att = this.arme + rdn.nextInt(10 - 1);
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