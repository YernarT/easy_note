import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'routes.dart' show routes;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
