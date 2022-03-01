part of marked_image;

class ShapeData {
  final double widthPercentage;
  final double heightPercentage;
  final double leftPercentage;
  final double topPercentage;

  double get width => widthPercentage * _width;
  double get height => heightPercentage * _height;
  double get left => leftPercentage * _width;
  double get top => topPercentage * _height;

  double _width = 0;
  double _height = 0;

  final List<Map<String, dynamic>> points;

  setDimensions({required double width, required double height}) {
    _width = width;
    _height = height;
  }

  ShapeData({
    required this.widthPercentage,
    required this.heightPercentage,
    required this.leftPercentage,
    required this.topPercentage,
    required this.points,
  });

  factory ShapeData.fromJson(Map<String, dynamic> json) {
    return ShapeData(
      widthPercentage: json["width"],
      heightPercentage: json["height"],
      leftPercentage: json["left"],
      topPercentage: json["top"],
      points: json["points"],
    );
  }
}
