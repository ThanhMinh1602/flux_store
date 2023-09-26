import 'package:flux_store/models/category_model.dart';

class ProductModel {
  String? id;
  String? name;
  String? image;
  String? price;
  CategoryModel? categoryModel;
  ProductModel();
}

List<ProductModel> listProduct = [
  ProductModel()
    ..id = '0'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/09/16/94c460cb7921bac2e87f9d0751b3206d.JPG'
    ..name = 'Đầm Lụa Xếp '
    ..price = '249'
    ..categoryModel = listCategory[0],
  ProductModel()
    ..id = '1'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/01/07/6785b314b44f193f3d570a9860647ee0.jpg'
    ..name = 'Áo Tapta Trễ Vai'
    ..price = '342'
    ..categoryModel = listCategory[1],
  ProductModel()
    ..id = '2'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/12/c1a4e2a72584aee356231e48e53ca2f6.jpg'
    ..name = 'Chân Váy Ren'
    ..price = '612'
    ..categoryModel = listCategory[2],
  ProductModel()
    ..id = '3'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/03/27/f8ba9fb157a4ee2e3d1456573e671cb2.jpg'
    ..name = 'Áo Hai Dây '
    ..price = '249'
    ..categoryModel = listCategory[3],
  ProductModel()
    ..id = '4'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/26/228c1212b1b93ddf8e5a20674726b8b8.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '2439'
    ..categoryModel = listCategory[2],
  ProductModel()
    ..id = '5'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/26/175ab93ded6a7b8e6d4f8119374d80f5.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '349'
    ..categoryModel = listCategory[0],
  ProductModel()
    ..id = '6'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/01/11/ca9776e991148fa24c16af25ebf3f0d6.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '249'
    ..categoryModel = listCategory[2],
  ProductModel()
    ..id = '7'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/04/12/a780ef69e5b8c50ebe0e8d1a0d523513.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '449'
    ..categoryModel = listCategory[2],
  ProductModel()
    ..id = '8'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/15/995bab909789043fefaf4b3dcde8d9e7.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '249'
    ..categoryModel = listCategory[0],
];
