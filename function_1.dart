import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(){
  print("Entrez le AB:");
  int AB = int.parse(stdin.readLineSync(encoding: utf8)?? '');

  print("Entrez le BC:");
  int BC = int.parse(stdin.readLineSync(encoding: utf8)?? '');

  double AC = sqrt((AB *AB) + (BC * BC));

  print("AC = $AC");


}

