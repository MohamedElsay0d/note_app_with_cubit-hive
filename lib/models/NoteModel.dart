import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Notemodel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  String date;
  @HiveField(3)
  int color;
  Notemodel(
      {required this.title,
      required this.content,
      required this.date,
      required this.color});
}
