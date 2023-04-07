// Utils
import 'package:uuid/uuid.dart' show Uuid;
import 'package:intl/intl.dart' show DateFormat;

class NoteModel {
  final String id;
  String title;
  String content;
  String createTime;
  String editTime;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.createTime,
    required this.editTime,
  });

  static createEmpty() {
    const uuid = Uuid();
    final now = DateTime.now();
    final formartter = DateFormat('yyyy-MM-dd HH:mm:ss');
    final formattedDate = formartter.format(now);

    return NoteModel(
        id: uuid.v1(),
        title: '',
        content: '',
        createTime: formattedDate,
        editTime: formattedDate);
  }
}
