part of marked_image;

class Part extends StatelessWidget {
  final PartData partData;
  final double width;
  final double height;
  final ValueChanged<String>? onTap;

  const Part({
    Key? key,
    required this.partData,
    required this.height,
    required this.width,
    this.onTap,
  }) : super(key: key);

  void onChangedHandler() {
    if (onTap != null) {
      onTap!(partData.nameId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: partData.left! * width,
      top: partData.top! * height,
      child: Stack(
        children: [
          height != double.infinity
              ? ClipPath(
                  clipper: ShapeCliper(points: partData.points!),
                  child: GestureDetector(
                    onTap: onChangedHandler,
                    child: Container(
                      width: width * partData.width!,
                      height: height * partData.height!,
                      color: Colors.transparent,
                    ),
                  ),
                )
              : SizedBox(),
          partData.label != null
              ? Positioned(
                  left: (width * partData.width!) * partData.labelPosition![0],
                  top: (height * partData.height!) * partData.labelPosition![1],
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black,
                    ),
                    width: 12,
                    height: 12,
                    child: Center(
                      child: Text(
                        partData.label!,
                        style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class ShapeCliper extends CustomClipper<Path> {
  final List<Point> points;

  ShapeCliper({required this.points});
  @override
  Path getClip(Size size) {
    var w = size.width;
    var h = size.height;
    Path path = Path();

    if (points.isNotEmpty) {
      var point = points[0];
      path.moveTo(size.width * point.x!, size.height * point.y!);
      points.forEach((point) {
        if (point.cx != null) {
          var controlPoint = Offset(point.cx! * w, point.cy! * h);
          var endPoint = Offset(point.x! * w, point.y! * h);
          path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
        } else {
          path.lineTo(size.width * point.x!, size.height * point.y!);
        }
      });
    } else {
      path.lineTo(0, h);
      path.lineTo(w, h);
      path.lineTo(w, 0);
    }
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
