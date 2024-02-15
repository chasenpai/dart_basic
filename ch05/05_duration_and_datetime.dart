void main() {

  DateTime now = DateTime.now();
  print(now);
  print(now.year);
  print(now.month);
  print(now.day);
  print(now.hour);
  print(now.minute);
  print(now.second);
  print(now.millisecond);

  Duration duration = Duration(seconds: 60);
  print(duration);
  print(duration.inDays);
  print(duration.inHours);
  print(duration.inMinutes);
  print(duration.inSeconds);
  print(duration.inMilliseconds);

  DateTime specificDays = DateTime(
    2023, //년도는 필수값
    06,
    12,
  );
  print(specificDays);

  final difference = now.difference(specificDays);
  print(difference);
  print(difference.inDays);
  print(difference.inHours);
  print(difference.inMinutes);

  print(now.isAfter(specificDays));
  print(now.isBefore(specificDays));

  print(now);
  print(now.add(Duration(days: 3, hours: 3, minutes: 30)));
  print(now.subtract(Duration(days: 3, hours: 3, minutes: 30)));

}