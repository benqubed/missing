library marked_image;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'part.dart';
part 'shape_data.dart';
part 'part_data.dart';

class MarkedImage extends StatefulWidget {
  final double width;
  final String assetPath;
  final List<PartData> parts;
  final ValueChanged<String>? onTap;

  MarkedImage({
    Key? key,
    required this.width,
    required this.assetPath,
    required this.parts,
    this.onTap,
  }) : super(key: key);

  @override
  _MarkedImageState createState() => _MarkedImageState();
}

class _MarkedImageState extends State<MarkedImage> {
  GlobalKey _globalKey = GlobalKey();

  double _imageAspectRatio = 0;

  Future _getAspectRatio() async {
    ByteData imageData = await rootBundle.load(widget.assetPath);
    var decodedImage = await decodeImageFromList(imageData.buffer.asUint8List());

    var originalImageHeight = decodedImage.height.toDouble();
    var originalImageWidth = decodedImage.width.toDouble();
    setState(() {
      _imageAspectRatio = originalImageWidth / originalImageHeight;
    });
  }

  @override
  void initState() {
    _getAspectRatio();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(widget.assetPath),
          width: widget.width,
          fit: BoxFit.contain,
          key: _globalKey,
        ),
        ..._generateParts(),
      ],
    );
  }

  List<Part> _generateParts() {
    List<Part> parts = [];

    widget.parts.forEach((part) {
      parts.add(
        Part(
          partData: part,
          width: widget.width,
          height: widget.width / _imageAspectRatio,
          onTap: widget.onTap,
        ),
      );
    });

    return parts;
  }

  // List<Part> _generateParts() {
  //   List<Part> parts = [];
  //   widget.parts.forEach((element) {
  //     var shape = ShapeData.fromJson(element.data);
  //     shape.setDimensions(width: _imageWidth, height: _imageHeight);
  //     parts.add(
  //       Part(
  //         x: shape.left,
  //         y: shape.top,
  //         width: shape.width,
  //         height: shape.height,
  //         points: shape.points,
  //         onTap: element.onTap,
  //         label: element.label,
  //         nameId: element.nameId,
  //         labelPosition: element.labelPosition,
  //       ),
  //     );
  //   });
  //   return parts;
  // }
}
