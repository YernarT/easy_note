import 'package:flutter/material.dart';

// Store
import 'package:get/get.dart';
import 'package:easy_note/store/getx/note_controller.dart';

class DetailHeader extends StatelessWidget {
  final NoteController noteController = Get.find();
  final Function onSave;

  DetailHeader({super.key, required this.onSave});

  void handleCopy() {
    Get.snackbar('Хабарландыру', 'Көшіру функциясы әзірленбеген');
  }

  void handleSave(BuildContext context) {
    FocusScope.of(context).unfocus();
    noteController.isEditing.value = false;
    onSave();
  }

  void hanldeBack(BuildContext context) {
    if (noteController.isEditing.value) {
      FocusScope.of(context).unfocus();
      noteController.isEditing.value = false;
      handleSave(context);
    }

    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
        height: 80,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                iconSize: 36,
                onPressed: () => hanldeBack(context),
                icon: const Icon(Icons.arrow_back)),
            IconButton(
                iconSize: 36,
                onPressed: () {
                  if (noteController.isEditing.value) {
                    handleSave(context);
                  } else {
                    handleCopy();
                  }
                },
                icon: Obx(() => noteController.isEditing.value
                    ? const Icon(Icons.done)
                    : const Icon(Icons.copy_all)))
          ],
        ));
  }
}
