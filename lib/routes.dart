import 'package:get/get.dart';

import 'pages/list_page/index.dart';
import 'pages/detail_page/index.dart';
import 'pages/create_page/index.dart';

var routes = [
  GetPage(
    name: '/',
    page: () => const ListPage(),
  ),
  GetPage(
    name: '/detail',
    page: () => DetailPage(),
  ),
  GetPage(
    name: '/create',
    page: () => const CreatePage(),
  ),
];
