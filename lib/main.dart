import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'store/getx/note_controller.dart';

import 'routes.dart' show routes;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Easy Note',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: '/',
      getPages: routes,
    );
  }
}
