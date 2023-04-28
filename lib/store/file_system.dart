import 'dart:io' show File;

import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

import 'package:uuid/uuid.dart' show Uuid;

// 获取目录中 所有 Note文件
Future<List<File>> getFiles() async {
  final directory = await getApplicationDocumentsDirectory();

  List<File> files = directory
      .listSync()
      .whereType<File>()
      .where((File file) => file.path.startsWith('EASY_NOTE__'))
      .toList();

  return files;
}

// 获取/创建 单一 Note文件
Future<File> getFile(Uuid id) async {
  final directory = await getApplicationDocumentsDirectory();

  return File('${directory.path}/$id.txt');
}

readFile(File file) {}
