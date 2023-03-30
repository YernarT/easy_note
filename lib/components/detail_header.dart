import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key});

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
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back)),
            IconButton(
                iconSize: 36,
                onPressed: () {},
                icon: const Icon(Icons.copy_all))
          ],
        ));
  }
}
