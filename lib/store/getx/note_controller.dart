import 'package:get/get.dart' show GetxController, Rx, RxT;

import 'package:easy_note/models/note_model.dart';

class NoteController extends GetxController {
  Rx<bool> isEditing = (false).obs;
  Rx<int> currentNoteIndex = (-1).obs;
  Rx<List<NoteModel>> noteList = <NoteModel>[].obs;
}
