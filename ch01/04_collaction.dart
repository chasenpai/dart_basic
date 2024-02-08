void main() {

  //List
  List<String> strList = ['tsla', 'aapl', 'meta', 'msft'];
  List<int> intList = [1, 2, 3, 4];

  print(strList);
  print(intList);

  print(strList[0]);
  print(intList[3]);

  print(strList.length);

  strList.add('nvda');
  print(strList);

  strList.remove('aapl');
  print(strList);

  print(strList.indexOf('msft'));

  //Map
  Map<String, String> capitalName = {
    'korea' : 'seoul',
    'japan' : 'tokyo',
    'china' : 'beijing',
  };
  print(capitalName);
  print(capitalName['korea']);

  Map<String, bool> isCapital = {
    'seoul' : true,
    'osaka' : false,
    'beijing' : true,
  };
  print(isCapital);

  isCapital.addAll({
    'nagoya' : false,
  });
  print(isCapital);

  isCapital['new york'] = true; //없으면 새로운 값 추가
  print(isCapital);

  isCapital['new york'] = false; //있으면 기존값 변경
  print(isCapital);

  isCapital.remove('new york');
  print(isCapital);

  print(isCapital.keys);
  print(isCapital.values);

  //Set - 중복값을 허용하지 않고 순서를 보장하지 않는다
  final Set<String> strSet = {
    'iphone',
    'macbook',
    'ipad',
    'iphone',
  };
  print(strSet);

  strSet.add('airpod');
  print(strSet);

  strSet.remove('airpod');
  print(strSet);

  print(strSet.contains('macbook'));

}