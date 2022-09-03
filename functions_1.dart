

import 'dart:convert';
import 'dart:io';

void main(){

  // List<String> alphabet = List<String>.generate(26, (index) => );

  print("Entrez le mot");
  String? mot = stdin.readLineSync(encoding: utf8);
  if(mot != null){
    List list = mot.split('');
    list.removeWhere((element) => element == ' ');
    mot = list.reversed.toList().join('');
    
    List<String> voyelles = 'aeyuio'.split('');

    int voyellesNumber = 0;
    int consomeNumber = 0;

    mot.split('').forEach((element) {
      if(voyelles.contains(element)){
        voyellesNumber++;
      }else{
        consomeNumber++;
      }
    });
    

    print(mot.codeUnitAt(0));
  }
}