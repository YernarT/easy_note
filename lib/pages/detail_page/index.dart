import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:easy_note/components/detail_header.dart';

class DetailPage extends StatelessWidget {
  final note = Get.arguments;

  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const DetailHeader(),
          Padding(
            padding: const EdgeInsets.all(12),
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
              Row(
                children: [],
              )
            ]),
          )
        ],
      ),
    ));
  }
}
