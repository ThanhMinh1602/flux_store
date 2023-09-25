class IntroModel {
  String? title;
  String? subTitle;
  String? image;
  IntroModel();
}

List<IntroModel> listIntrol = [
  IntroModel()
    ..title = 'Discover something new'
    ..subTitle = 'Special new arrivals just for you'
    ..image =
        'https://cdn.pixabay.com/photo/2014/12/20/18/22/woman-574232_1280.jpg',
  IntroModel()
    ..title = 'Update trendy outfit'
    ..subTitle = 'Favorite brands and hottest trends'
    ..image =
        'https://cdn.pixabay.com/photo/2013/07/12/19/29/audrey-hepburn-154881_1280.png',
  IntroModel()
    ..title = 'Explore your true style'
    ..subTitle = 'Relax and let us bring the style to you'
    ..image =
        'https://cdn.pixabay.com/photo/2018/01/14/15/52/fashion-3082069_1280.png',
];
