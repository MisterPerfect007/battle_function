void main(){
  // bool doing = true;
  // do{}while(doing);
  List<int> listDesNombres = [7,-9,6,2,-8];
  ArrayFunc(listDesNombres);

}

void ArrayFunc(List<int> listDesNombres){
  List<int>  lesPositifs = [];
  List<int>  lesNegatifs = [];

  listDesNombres.forEach((element) {
    if(element > 0){
      lesPositifs.add(element);
    }else{
      lesNegatifs.add(element);
    }

  });

  //somme positive
  int sommePosi = lesPositifs.reduce((value, element) => value + element);
  //somme négative
  int sommeNega = lesNegatifs.reduce((value, element) => value + element);

  int somme = sommePosi + sommeNega;

  if(somme > 0){
    print("Positif");
  }else if(somme < 0){
    print("Négatif");
  }else{
    print("Egaux");
  }
  print(sommeNega);
  print(sommePosi);
}
