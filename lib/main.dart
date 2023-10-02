import 'package:flutter/material.dart';
import 'package:flux_store/models/product_model.dart';
import 'package:flux_store/pages/detail_page.dart';

import 'package:flux_store/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home:  DetailPage(productModel: listProduct[0],),
    );
  }
}
