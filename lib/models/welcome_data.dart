class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({required this.imageAssetPath, required this.title, required this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[
    SliderModel(title: 'My Data Here', imageAssetPath: 'assets/images/audi.png', desc: 'My Data Here'),
    SliderModel(title: 'My Data Here', imageAssetPath: 'assets/images/audi.png', desc: 'My Data Here'),
    SliderModel(title: 'My Data Here', imageAssetPath: 'assets/images/audi.png', desc: 'My Data Here'),
    SliderModel(title: 'My Data Here', imageAssetPath: 'assets/images/audi.png', desc: 'My Data Here'),
  ];

  return slides;
}
