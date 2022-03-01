import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:missing/screens/trade_in/data/constants.dart';
import 'package:missing/screens/trade_in/preview_screen.dart';

class PointPicker extends StatefulWidget {
  PointPicker({Key? key}) : super(key: key);

  @override
  _PointPickerState createState() => _PointPickerState();
}

class _PointPickerState extends State<PointPicker> {
  double _maxScale = 10;
  bool _zoomActivated = false;
  String _imagePath = imageAsset;

  List<DynamicOffset> _points = [];
  List<DynamicOffset> _undonePoints = [];
  int random = 0;

  @override
  void initState() {
    super.initState();
  }

  Future<List<double>> _imageSize() async {
    ByteData imageData = await rootBundle.load(_imagePath);
    var decodedImage = await decodeImageFromList(imageData.buffer.asUint8List());
    double width = 0;
    double height = 0;

    var originalImageHeight = decodedImage.height.toDouble();
    var originalImageWidth = decodedImage.width.toDouble();

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    var size = screenWidth > screenHeight ? screenHeight * 0.7 : screenWidth;

    if (originalImageWidth > originalImageHeight) {
      double aspectRatio = originalImageHeight / originalImageWidth;
      width = size;
      height = aspectRatio * width;
    } else {
      double aspectRatio = originalImageWidth / originalImageHeight;
      height = size;
      width = aspectRatio * height;
    }

    return [width, height];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoomable Screen'),
        actions: [],
      ),
      body: FutureBuilder<List<double>>(
          future: _imageSize(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var width = snapshot.data![0];
              var height = snapshot.data![1];

              return Column(
                children: [
                  // Text('${_points.length}'),
                  Expanded(
                    child: InteractiveViewer(
                      maxScale: _maxScale,
                      scaleEnabled: _zoomActivated,
                      panEnabled: _zoomActivated,
                      child: GestureDetector(
                        onTapUp: (data) {
                          var offset = data.localPosition;
                          setState(() {
                            _points.add(_dynamicOffset(offset, width, height));
                            _undonePoints = [];
                          });
                        },
                        onPanUpdate: _zoomActivated
                            ? null
                            : (data) {
                                var offset = data.localPosition;
                                setState(() {
                                  _points.last = _dynamicOffset(offset, width, height);
                                });
                              },
                        child: Container(
                          width: width,
                          height: height,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(_imagePath),
                                width: width,
                                height: height,
                                fit: BoxFit.contain,
                              ),
                              CustomPaint(
                                painter: LinePainter(
                                  points: _generatePoints(
                                    dynamicOffsets: _points,
                                    width: width,
                                    height: height,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(PreviewScreen.route());
                        },
                        icon: Icon(
                          Icons.preview,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          List<List<double>> points = [];
                          _points.forEach((element) {
                            points.add([element.x, element.y]);
                          });

                          await Clipboard.setData(ClipboardData(text: points.toString()));
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Points copied on clipboard')));
                        },
                        icon: Icon(Icons.copy),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _zoomActivated = !_zoomActivated;
                          });
                        },
                        icon: Icon(
                          Icons.zoom_in,
                          color: _zoomActivated ? Theme.of(context).primaryColor : Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          var offset = _points.last;
                          setState(() {
                            _points.removeLast();
                            _undonePoints.add(offset);
                          });
                        },
                        icon: Icon(Icons.undo),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_undonePoints.isNotEmpty) {
                            var offset = _undonePoints.last;
                            setState(() {
                              _points.add(offset);
                              _undonePoints.removeLast();
                            });
                          }
                        },
                        icon: Icon(Icons.redo),
                      ),
                    ],
                  ),
                ],
              );
            }
            return SizedBox();
          }),
    );
  }

  DynamicOffset _dynamicOffset(Offset offset, double width, double height) {
    var x = offset.dx / width;
    var y = offset.dy / height;
    return DynamicOffset(x: x, y: y);
  }

  List<Offset> _generatePoints({
    required List<DynamicOffset> dynamicOffsets,
    required double width,
    required double height,
  }) {
    List<Offset> points = [];
    dynamicOffsets.forEach((element) {
      var x = element.x * width;
      var y = element.y * height;
      points.add(Offset(x, y));
    });
    return points;
  }
}

class DynamicOffset {
  final double x;
  final double y;

  DynamicOffset({required this.x, required this.y});
}

class LinePainter extends CustomPainter {
  final List<Offset> points;
  LinePainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 1.0;

    for (int i = 0; i < points.length; i++) {
      var offset = points[i];
      var offsetTwo = points.length == 1 || i == points.length - 1 ? points[i] : points[i + 1];
      canvas.drawLine(offset, offsetTwo, paint);
    }
    // canvas.drawPoints(PointMode.points, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class ClickableClipper extends CustomClipper<Path> {
  final List<Offset> points;

  ClickableClipper({required this.points});

  @override
  Path getClip(Size size) {
    Path path = Path();
    var offset = points.first;
    path.moveTo(offset.dx, offset.dy);
    points.forEach((offset) {
      path.lineTo(offset.dx, offset.dy);
    });
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
