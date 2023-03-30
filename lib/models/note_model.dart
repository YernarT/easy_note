class NoteModel {
  final String id;
  final String title;
  final String content;
  final String createTime;
  final String editTime;

  const NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.createTime,
    required this.editTime,
  });
}
