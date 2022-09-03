

import 'dart:convert';
import 'dart:io';

void main(){
  print("Entrez le nombre");
  int nombre = int.parse(stdin.readLineSync(encoding: utf8)?? '');

  List<int> lesPremiers = [];

  for (var i = 1; i < nombre; i++) {
    if (estPremier(i)) {
      lesPremiers.add(i);
      
    }
  }
  int sommeDesPremiers = lesPremiers.reduce((value, element) => value + element);

  List<int> divPremier = [];

  for (var i = 2; i < sommeDesPremiers; i++) {
    if (sommeDesPremiers % i == 0) {
      divPremier.add(i);
    }
  }

  // print(estPremier(nombre));
  print("Les nombres premiers sont : $lesPremiers");
  print("Les diviseurs sont : $divPremier");
}

bool estPremier(int nombre){
  for(int i = 2; i < nombre; i++){
    if(nombre % i == 0){
      return false;
    }
  }
  return true;
}