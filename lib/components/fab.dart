import 'package:flutter/material.dart';

// Store
import 'package:get/get.dart';
import 'package:easy_note/store/getx/note_controller.dart';

// Model
import 'package:easy_note/models/note_model.dart';

class FAB extends StatelessWidget {
  final NoteController noteController = Get.find();

  FAB({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 50,
        ),
        onPressed: () {
          noteController.noteList.value.add(NoteModel.createEmpty());
          noteController.currentNoteIndex.value =
              noteController.noteList.value.length - 1;
          Get.toNamed('/create');
        },
      ),
    );
  }
}
