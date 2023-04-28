import 'package:flutter/material.dart';

// Store
import 'package:get/get.dart';
import 'package:easy_note/store/getx/note_controller.dart';

// Component
import 'package:easy_note/components/detail_header.dart';
import 'package:easy_note/components/note_status.dart';

// Utils
import './utils.dart' show calcSymbolCount;

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<StatefulWidget> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final NoteController noteController = Get.find();

  int _symbolCount = 0;

  final _titleFocus = FocusNode();
  final _contentFocus = FocusNode();

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _titleFocus.addListener(_handleFocusChange);
    _contentFocus.addListener(_handleFocusChange);

    _titleController.addListener(() {
      setState(() {
        _symbolCount = calcSymbolCount(_titleController, _contentController);
      });
    });

    _contentController.addListener(() {
      setState(() {
        _symbolCount = calcSymbolCount(_titleController, _contentController);
      });
    });
  }

  @override
  void dispose() {
    _titleFocus.dispose();
    _contentFocus.dispose();

    _titleController.dispose();
    _contentController.dispose();

    super.dispose();
  }

  void _handleFocusChange() {
    if (_titleFocus.hasFocus || _contentFocus.hasFocus) {
      noteController.isEditing.value = true;
    }
  }

  void handleSave() {
    final noteList = noteController.noteList.value;
    final currentNoteIndex = noteController.currentNoteIndex.value;

    noteList[currentNoteIndex].title = _titleController.text;
    noteList[currentNoteIndex].content = _contentController.text;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          DetailHeader(
            onSave: handleSave,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Column(children: [
              TextField(
                focusNode: _titleFocus,
                controller: _titleController,
                minLines: 1,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                    hintText: 'Тақырып',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
              NoteStatus(
                symbolCount: _symbolCount,
              ),
              TextField(
                focusNode: _contentFocus,
                controller: _contentController,
                minLines: 1,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                style: const TextStyle(fontSize: 30),
                decoration: const InputDecoration(
                    hintText: 'Бастап жазу',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ]),
          )
        ],
      ),
    )));
  }
}
