import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:easy_note/components/detail_header.dart';
import 'package:easy_note/components/note_status.dart';

class DetailPage extends StatelessWidget {
  final note = Get.arguments;

  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          // DetailHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Column(children: const [
              TextField(
                minLines: 1,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    hintText: 'Тақырып',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
              NoteStatus(
                symbolCount: 0,
              ),
              TextField(
                minLines: 1,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                style: TextStyle(fontSize: 30),
                decoration: InputDecoration(
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
