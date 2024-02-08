void main() {

  List<String> aespa = ['윈터', '카리나', '닝닝', '지젤'];

  final newAespa = aespa.map((a){
    return '에스파 $a';
  }).toList();

  print(aespa);
  print(newAespa);

  final newAespa2 = aespa.map((a) => '에스파 $a').toList();
  print(newAespa2);

  print(aespa == newAespa); //완전히 새로운 리스트로 대체
  print(newAespa == newAespa2);

  String num = '12345';
  final parsed =num.split('').map((n) => '$n.jpg').toList();
  print(parsed);

  Map<String, String> jujutsuKaisen = {
    'gojo satoru' : '고죠 사토루',
    'sukuna' : '스쿠나',
    'megumi' : '메구미',
  };
  
  final result = jujutsuKaisen.map((key, value) => MapEntry(
      'JujutsuKaisen Character $key',
      '주술회전 캐릭터 $value'
    )
  );
  print(jujutsuKaisen);
  print(result);

  final keys = jujutsuKaisen.keys.map((key) => 'JujutsuKaisen Character $key');
  print(keys);

  final values = jujutsuKaisen.values.map((value) => '주술회전 캐릭터 $value');
  print(values);

  Set ive = {'원영', '유진', '이서', '가을', '리즈', '레이'};
  print(ive);

  final newIve = ive.map((i) => '아이브 $i');
  print(newIve);

}