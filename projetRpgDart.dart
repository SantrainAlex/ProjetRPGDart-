import 'src/Personnage.dart';
import 'dart:math';

Random rdn = new Random();

void main() {
  const double initialPv = 100;
  const int initial = 0;
  personnage PersoUn =
      personnage('alexis', initialPv, 100, initial, initial, 3, 0);
  personnage Persodeux =
      personnage('jeje ', initialPv, 100, initial, initial, 4, 0);
  var boolValue = Random().nextBool();

  if (boolValue == true) {
    while (PersoUn.pv >= 0 && Persodeux.pv >= 0) {
      print(PersoUn.printTour());
      print(PersoUn.printPerso());
      print(Persodeux.printPerso());
      Persodeux.controlPv(PersoUn);
      PersoUn.pv > 0 ? print(PersoUn.printPerso()) : "";
      PersoUn.controlPv(Persodeux);
      Persodeux.pv > 0 ? print(Persodeux.printPerso()) : "";
      PersoUn.pv <= 30 && PersoUn.mana >= 100
          ? PersoUn.tourMax = PersoUn.tourMax + 1
          : "";
      Persodeux.pv <= 30 && Persodeux.mana >= 100
          ? Persodeux.tourMax = Persodeux.tourMax + 1
          : "";
      PersoUn.nbrTour = PersoUn.nbrTour + 1;
      print('');
      if (PersoUn.pv <= 0) {
        return print(PersoUn.name + ' game over');
      }
      if (Persodeux.pv <= 0) {
        return print(Persodeux.name + ' game over');
      }
    }
  } else {
    while (PersoUn.pv >= 0 && Persodeux.pv >= 0) {
      print(PersoUn.printTour());
      print(PersoUn.printPerso());
      print(Persodeux.printPerso());
      PersoUn.controlPv(Persodeux);
      Persodeux.pv > 0 ? print(Persodeux.printPerso()) : "";
      Persodeux.controlPv(PersoUn);
      Persodeux.pv > 0 ? print(PersoUn.printPerso()) : "";
      PersoUn.pv <= 30 && PersoUn.mana >= 100
          ? PersoUn.tourMax = PersoUn.tourMax + 1
          : "";
      Persodeux.pv <= 30 && Persodeux.mana >= 100
          ? Persodeux.tourMax = Persodeux.tourMax + 1
          : "";
      PersoUn.nbrTour = PersoUn.nbrTour + 1;
      print(' ');
      if (PersoUn.pv <= 0) {
        return print(PersoUn.name + ' game over');
      }
      if (Persodeux.pv <= 0) {
        return print(Persodeux.name + ' game over');
      }
    }
  }
}
