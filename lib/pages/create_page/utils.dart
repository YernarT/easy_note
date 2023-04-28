import 'package:flutter/material.dart' show TextEditingController;

int calcSymbolCount(TextEditingController titleController,
    TextEditingController contentController) {
  return titleController.text.length + contentController.text.length;
}
