void main() {

  List<String> aespa = ['윈터', '카리나', '닝닝', '지젤', '윈터'];
  print(aespa);
  print(aespa.asMap());
  print(aespa.toSet());

  Map aespaMap = aespa.asMap();
  print(aespaMap.keys); //Iterable
  print(aespaMap.keys.toList());
  print(aespaMap.values.toList());

  Set aespaSet = Set.from(aespa);
  print(aespaSet.toList());

}