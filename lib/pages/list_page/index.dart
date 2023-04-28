import 'package:flutter/material.dart';

// Store
import 'package:get/get.dart';
import 'package:easy_note/store/getx/note_controller.dart';
import 'package:easy_note/store/file_system.dart' show getFiles, getFile;

// Model
// import 'package:easy_note/models/note_model.dart';

// Component
import 'package:easy_note/components/search.dart';
import 'package:easy_note/components/fab.dart';
// import 'package:easy_note/components/note_card.dart';

import 'package:easy_note/pages/list_page/mock.dart' show getNoteList;

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final NoteController noteController = Get.find();
  // ?
  bool isLoading = true;

  // print('appDocDir: ');
  // print(appDocDir);

  @override
  void initState() {
    super.initState();

    getFiles().then((value) {
      print('files: ');
      print(value);
      print(noteController.currentNoteIndex.value);
      print(noteController.noteList.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FAB(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              const Expanded(
                flex: 0,
                child: Search(),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(flex: 1, child: ListView(children: getNoteList(5))),
            ]),
          )),
    );
  }
}
