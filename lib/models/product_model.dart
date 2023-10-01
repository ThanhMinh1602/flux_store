import 'package:flutter/material.dart';
import 'package:flux_store/models/category_model.dart';

class ProductModel {
  String? id;
  String? name;
  String? image;
  String? price;
  CategoryModel? categoryModel;
  String? raitingStar;
  int? view;
  List<String>? imageDetail;
  List<Color>? colors;
  List<String>? sizes;
  String? description;
  ProductModel();
}

List<ProductModel> listProduct = [
  ProductModel()
    ..id = '0'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/09/16/94c460cb7921bac2e87f9d0751b3206d.JPG'
    ..name = 'Đầm Lụa Xếp '
    ..price = '249'
    ..categoryModel = listCategory[0]
    ..view = 123
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar = '83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '1'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/01/07/6785b314b44f193f3d570a9860647ee0.jpg'
    ..name = 'Áo Tapta Trễ Vai'
    ..price = '342'
    ..categoryModel = listCategory[1]
    ..view = 11234
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar ='83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '2'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/12/c1a4e2a72584aee356231e48e53ca2f6.jpg'
    ..name = 'Chân Váy Ren'
    ..price = '612'
    ..categoryModel = listCategory[2]
    ..view = 242
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar ='83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '3'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/03/27/f8ba9fb157a4ee2e3d1456573e671cb2.jpg'
    ..name = 'Áo Hai Dây '
    ..price = '249'
    ..categoryModel = listCategory[3]
    ..view = 453
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar = '83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '4'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/26/228c1212b1b93ddf8e5a20674726b8b8.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '2439'
    ..categoryModel = listCategory[2]
    ..view = 3432
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar = '83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '5'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/26/175ab93ded6a7b8e6d4f8119374d80f5.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '349'
    ..categoryModel = listCategory[0]
    ..view = 1212
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar = '83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '6'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/01/11/ca9776e991148fa24c16af25ebf3f0d6.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '249'
    ..categoryModel = listCategory[2]
    ..view = 1233
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar = '83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '7'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/04/12/a780ef69e5b8c50ebe0e8d1a0d523513.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '449'
    ..categoryModel = listCategory[2]
    ..view = 112
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar = '83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
  ProductModel()
    ..id = '8'
    ..image =
        'https://pubcdn.ivymoda.com/files/product/thumab/400/2023/05/15/995bab909789043fefaf4b3dcde8d9e7.jpg'
    ..name = 'Đầm Lụa Xếp '
    ..price = '249'
    ..categoryModel = listCategory[0]
    ..view = 894
    ..imageDetail = [
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/10/12/22285f9a6efdbee6c91a283de9003cb7.jpeg',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2023/09/16/e84d3542a8dc6806cabd812ea9eecdd7.JPG',
      'https://pubcdn.ivymoda.com/files/product/thumab/1400/2022/11/04/5a28b8711de63a5d90dab3db67b24774.jpg'
    ]
    ..colors = [Colors.green, Colors.amber, Colors.black]
    ..sizes = ['s', 'm', 'l']
    ..raitingStar ='83'
    ..description =
        'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm'
            'sát, tôn lên đường cong cơ thể. Đầm phối cùng đai da (có thể'
            'tháo rời) chia phân khúc cơ thể trông nàng sẽ cao hơn. Điểm'
            'nhấn là phần vai được may cắt khéo léo, đính kèm phụ kiện kim'
            'loại giúp bộ trang phục thêm sang trọng.'
            'Chất liệu được sử dụng là loại thun dày dặn, mềm nhẹ, giữ ấm'
            'tốt cùng màu sắc trung tính rất phù hợp với thời tiết se lạnh. '
            'Đầm dễ dàng mix cùng nhiều kiểu áo khoác. Phối đầm cùng'
            'đôi boots da là nàng sẽ có 1 outfit thật cá tính.'
            'Đây là thiết kế đầm mà mọi cô nàng đều nên có bởi thiết kế ôm',
];
