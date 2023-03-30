import 'package:flutter/material.dart';

// import 'package:easy_note/models/note_model.dart';

import 'package:easy_note/components/search.dart';
import 'package:easy_note/components/fab.dart';
// import 'package:easy_note/components/note_card.dart';

import 'package:easy_note/pages/list_page/mock.dart' show getNoteList;

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: const FAB(),
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
