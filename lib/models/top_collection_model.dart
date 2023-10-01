import 'package:flux_store/models/product_model.dart';

class TopCollectionModel {
  String? title;
  String? subtitle;
  String? image;
  TopCollectionModel();
}

List<TopCollectionModel> listTopColections = [
  TopCollectionModel()
    ..title = 'Sale up to 40%'
    ..subtitle = 'FOR SLIM & BEAUTY'
    ..image =
        'https://cdn.pixabay.com/photo/2018/08/04/17/12/women-3584031_1280.png',
  TopCollectionModel()
    ..title = 'Summer Collection 2021'
    ..subtitle = 'Most sexy & fabulous design'
    ..image =
        'https://cdn.pixabay.com/photo/2016/06/15/10/39/man-1458632_1280.png',
  TopCollectionModel()
    ..title = 'T-Shirts'
    ..subtitle = 'The Office Life'
    ..image =
        'https://cdn.pixabay.com/photo/2017/01/31/13/39/black-2024122_1280.png',
  TopCollectionModel()
    ..title = 'Dresses'
    ..subtitle = 'Elegant Design'
    ..image =
        'https://cdn.pixabay.com/photo/2014/04/02/17/01/model-307701_1280.png'
];
