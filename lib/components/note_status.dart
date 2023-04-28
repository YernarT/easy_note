import 'package:flutter/material.dart';

class NoteStatus extends StatelessWidget {
  final int symbolCount;

  const NoteStatus({
    super.key,
    required this.symbolCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '30 сәуір 12:32 PM',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.centerRight,
            child: Text(
              '$symbolCount символ',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
        )
      ],
    );
  }
}
