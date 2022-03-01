part of marked_image;

List<PartData> partDataFromJson(String str) => List<PartData>.from(json.decode(str).map((x) => PartData.fromJson(x)));

String partDataToJson(List<PartData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PartData {
  PartData({
    this.nameId,
    this.name,
    this.labelPosition,
    this.left,
    this.top,
    this.width,
    this.height,
    this.points,
    this.label,
  });

  String? nameId;
  String? name;
  List<double>? labelPosition;
  double? left;
  double? top;
  double? width;
  double? height;
  List<Point>? points;
  String? label;

  PartData copyWith({
    String? nameId,
    String? name,
    List<double>? labelPosition,
    double? left,
    double? top,
    double? width,
    double? height,
    List<Point>? points,
    String? label,
  }) =>
      PartData(
        nameId: nameId ?? this.nameId,
        name: name ?? this.name,
        labelPosition: labelPosition ?? this.labelPosition,
        left: left ?? this.left,
        top: top ?? this.top,
        width: width ?? this.width,
        height: height ?? this.height,
        points: points ?? this.points,
        label: label ?? this.label,
      );

  factory PartData.fromJson(Map<String, dynamic> json) => PartData(
        nameId: json["nameId"] == null ? null : json["nameId"],
        name: json["name"] == null ? null : json["name"],
        labelPosition: json["labelPosition"] == null ? null : List<double>.from(json["labelPosition"].map((x) => x.toDouble())),
        left: json["left"] == null ? null : json["left"].toDouble(),
        top: json["top"] == null ? null : json["top"].toDouble(),
        width: json["width"] == null ? null : json["width"].toDouble(),
        height: json["height"] == null ? null : json["height"].toDouble(),
        points: json["points"] == null ? null : List<Point>.from(json["points"].map((x) => Point.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nameId": nameId == null ? null : nameId,
        "name": name == null ? null : name,
        "labelPosition": labelPosition == null ? null : List<dynamic>.from(labelPosition!.map((x) => x)),
        "left": left == null ? null : left,
        "top": top == null ? null : top,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "points": points == null ? null : List<dynamic>.from(points!.map((x) => x.toJson())),
      };
}

class Point {
  Point({
    this.x,
    this.y,
    this.cx,
    this.cy,
  });

  double? x;
  double? y;
  double? cx;
  double? cy;

  Point copyWith({
    double? x,
    double? y,
    double? cx,
    double? cy,
  }) =>
      Point(
        x: x ?? this.x,
        y: y ?? this.y,
        cx: cx ?? this.cx,
        cy: cy ?? this.cy,
      );

  factory Point.fromJson(Map<String, dynamic> json) => Point(
        x: json["x"] == null ? null : json["x"].toDouble(),
        y: json["y"] == null ? null : json["y"].toDouble(),
        cx: json["cx"] == null ? null : json["cx"].toDouble(),
        cy: json["cy"] == null ? null : json["cy"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "x": x == null ? null : x,
        "y": y == null ? null : y,
        "cx": cx == null ? null : cx,
        "cy": cy == null ? null : cy,
      };
}
