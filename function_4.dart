

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
      if(voyelles.contains(element.toLowerCase())){
        voyellesNumber++;
      }else{
        consomeNumber++;
      }
    });

     print(">>>>>>>>>>> le mot renveré = $mot");

    if (voyellesNumber > consomeNumber) {
      print(">>les dominants sont les voyelles");
    }else if (voyellesNumber < consomeNumber){
      print(">>les dominants sont les consonnes");
    }else{
      print(">>les voyelles et les consonnes sont egaux");
    }

    List<int> lettersByPosition = [];

    // mot.split('').forEach((element) {
    //   lettersByPosition.add(element.codeUnits)
    // });
    // mot.codeUnits.map((e) => e - );
    mot.toLowerCase().codeUnits.forEach((element) {
      lettersByPosition.add (element - 96);
    });

    print(">>>>>>>>>>> lettres remplacées par leur positions : ${lettersByPosition.join(',')}");
  }
}