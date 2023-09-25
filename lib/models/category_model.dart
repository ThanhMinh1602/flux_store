import 'package:flutter/material.dart';

class CategoryModel {
  int? id;
  String? categoryName;
  IconData? icon;
  CategoryModel();
}

List<CategoryModel> listCategory = [
  CategoryModel()
    ..id = 0
    ..categoryName = 'Women',
  CategoryModel()
    ..id = 1
    ..categoryName = 'Men',
  CategoryModel()
    ..id = 2
    ..categoryName = 'Accessories',
  CategoryModel()
    ..id = 3
    ..categoryName = 'Beauty'
];
