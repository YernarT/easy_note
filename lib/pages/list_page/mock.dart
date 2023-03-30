import 'package:flutter/material.dart';

import 'package:uuid/uuid.dart' show Uuid;

import 'package:easy_note/models/note_model.dart';

import 'package:easy_note/components/note_card.dart';

List<Widget> getNoteList(int count) {
  const uuid = Uuid();
  final noteList = <Widget>[];
  const loremText = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et vestibulum sapien. Suspendisse pellentesque laoreet nunc quis gravida. Nulla metus ex, molestie sit amet convallis condimentum, tempus vel tellus. Mauris id ultrices justo, vel rutrum lacus. Duis imperdiet, risus id dapibus elementum, nisl lectus convallis eros, eu iaculis lectus arcu in sem. Mauris mollis quam a ligula pellentesque imperdiet. Mauris ac orci ac nisl suscipit sagittis.

Sed et blandit sem, ornare finibus mi. Duis in felis sit amet libero viverra fermentum. Curabitur semper felis a ullamcorper lobortis. Ut eget neque imperdiet, convallis sem id, iaculis dui. Sed vitae elit nulla. Fusce finibus metus vel justo porttitor, eu molestie nulla bibendum. Nulla rhoncus arcu non porta pharetra. Integer aliquam et justo non tempus.

Aenean ultrices varius volutpat. Morbi condimentum, orci vel luctus ultrices, turpis diam laoreet mauris, a porta odio felis vitae massa. Phasellus eleifend vitae arcu in venenatis. Nullam a orci lorem. Quisque suscipit lectus ac suscipit porta. Integer ac posuere quam. Praesent quis accumsan dui, at aliquet velit. Suspendisse potenti. Quisque nisl ipsum, interdum in nibh vel, fermentum ornare libero. Phasellus tincidunt justo libero, in volutpat ante pellentesque sit amet. Quisque sagittis dui sed lorem ornare rhoncus.

Suspendisse potenti. Aliquam bibendum accumsan neque quis volutpat. Nullam malesuada nunc nec lorem bibendum efficitur. Suspendisse sit amet nulla nec felis malesuada lacinia. Pellentesque a elit a erat congue pharetra. Mauris at facilisis nisi. Nulla euismod justo accumsan ipsum venenatis, ac ultricies leo vehicula. Cras eget scelerisque tellus. Maecenas quis laoreet lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam sodales diam sit amet turpis pellentesque malesuada. Donec blandit commodo nunc vitae imperdiet. Proin sit amet porttitor ante. Ut rutrum, sem vel commodo eleifend, lacus mauris rhoncus erat, non lacinia libero dui ac eros.

Pellentesque sit amet diam erat. Fusce eget feugiat dui. Curabitur placerat sem at dui vestibulum dignissim. Ut nulla nulla, pharetra vitae turpis a, molestie dapibus arcu. Ut imperdiet sapien non erat convallis elementum. Aliquam sed libero id arcu lacinia vehicula. Integer in erat dolor.
''';

  for (int i = 0; i < count; i++) {
    noteList.add(NoteCard(
        note: NoteModel(
            id: uuid.v1(),
            title: 'Тақырып ${i + 1}',
            content: loremText,
            createTime: '2023-03-29 15:11:00',
            editTime: '2023-03-29 15:19:00')));

    noteList.add(const SizedBox(
      height: 16,
    ));
  }

  noteList.add(const SizedBox(
    height: 80,
  ));

  return noteList;
}
