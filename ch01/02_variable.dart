void main() {

    //Integer
    int int1 = 20;
    print(int1);

    int int2 = -25;
    print(int2);

    int2 = 25;
    print(int2);
    print(int1 + int2);
    print(int1 - int2);
    print(int1 * int2);
    print(int1 / int2);

    //Double
    double dou1 = 2.5;
    double dou2 = 3.5;
    print(dou1 + dou2);
    print(dou1 - dou2);
    print(dou1 * dou2);
    print(dou1 / dou2);

    //Boolean
    bool isTrue = true;
    bool isFalse = false;
    print(isTrue);
    print(isFalse);

    //String
    String str1 = 'cha';
    String str2 = 'jun';
    String str3 = 'woo';
    print(str1 + str2 + str3);
    print('$str1$str2$str3'); //변수 하나만 쓰는 경우 괄호 생략

    //타입 유추
    var var1 = 'cha';
    print(var1.runtimeType);

    var var2 = 100;
    print(var2.runtimeType);

    dynamic dyn1 = 'cha';
    print(dyn1);
    dyn1 = 20;

    var var3 = 100;
    // var3 = 'jun'; //처음 선언한 타입으로 고정됨

    //Null
    String non = 'kim'; //non-nullable
    print(non);
    String? able = 'park'; //nullable
    able = null;
    // print(able!); //null이 아니다

    //Final & Const
    final fnlStr = 'Tesla'; //타입 생략 가능
    // fnlStr = 'SpaceX'; //값 변경 불가
    const cnstStr = 'MSFT';
    // cnstStr = 'META'; //마찬가지로 값 변경 불가

    final DateTime now1 = DateTime.now(); //빌드타임의 값을 알고 있지 않아도 됨
    // const DateTime now2 = DateTime.now(); //빌드타임의 값을 알고 있어야 함
}