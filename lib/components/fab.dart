import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FAB extends StatelessWidget {
  const FAB({super.key});

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
          Get.toNamed('/create');
        },
      ),
    );
  }
}
