import 'package:hive/hive.dart';
import 'NoteModel.dart';

class NotemodelAdapter extends TypeAdapter<Notemodel> {
  @override
  final int typeId = 0;

  @override
  Notemodel read(BinaryReader reader) {
    final title = reader.readString();
    final content = reader.readString();
    final date = reader.readString();
    final color = reader.readInt();
    return Notemodel(title: title, content: content, date: date, color: color);
  }

  @override
  void write(BinaryWriter writer, Notemodel obj) {
    writer.writeString(obj.title);
    writer.writeString(obj.content);
    writer.writeString(obj.date);
    writer.writeInt(obj.color);
  }
}
