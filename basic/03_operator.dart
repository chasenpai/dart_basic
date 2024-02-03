void main() {

    int num1 = 2;
    print(num1);
    print(num1 + 3);
    print(num1 - 3);
    print(num1 * 3);
    print(num1 / 3);
    print(num1 % 3);

    print('==================');
    print(num1);

    print('==================');
    num1 ++;
    print(num1);
    num1 --;
    print(num1);

    print('==================');
    double num2 = 4.0;
    print(num2);

    num2 += 1;
    print(num2);
    num2 -= 1;
    print(num2);
    num2 *= 2;
    print(num2);
    num2 /= 3;
    print(num2);

    print('==================');
    double? num3 = 5.0;
    print(num3);
    num3 = 3.0;
    print(num3);
    num3 = null;
    print(num3);

    num3 ??= 4.0; //num3이 null이면 오른쪽 값으로 할당
    print(num3);

    print('==================');
    int num4 = 1;
    int num5 = 2;
    print(num4 < num5);
    print(num4 > num5);
    print(num4 >= num5);
    print(num4 <= num5);
    print(num4 == num5);
    print(num4 != num5);

    print('==================');
    int num6 = 1;
    print(num6 is int);
    print(num6 is! int);
    print(num6 is String);
    print(num6 is! String);

    print('==================');
    bool bool1 = 10 > 7 && 90 < 100;
    print(bool1);
    bool bool2 = 10 < 7 && 90 < 100;
    print(bool2);

    bool bool3 = 31 > 20 || 21 > 8;
    print(bool3);
    bool bool4 = 31 > 20 || 21 < 8;
    print(bool4);

}