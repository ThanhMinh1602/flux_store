import 'package:flutter/material.dart';

class CategoryModel {
  int? id;
  String? categoryName;
  IconData? icon;
  ClothingModel? clothingModel;
  AccessoriesModel? accessoriesModel;
  ShoesModel? shoesModel;
  CollectionModel? collectionModel;
  CategoryModel();
}

class CollectionModel {}

class ShoesModel {}

class AccessoriesModel {}

class ClothingModel {}

List<CategoryModel> listCategory = [
  CategoryModel()
    ..id = 0
    ..categoryName = 'Women'
    ..accessoriesModel
    ..collectionModel,
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
