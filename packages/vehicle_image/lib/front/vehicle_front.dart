// part of vehicle_image;

// class VehicleFront extends StatelessWidget {
//   final double width;
//   final PartData? frontLeftBumper;
//   final PartData? frontCenterBumper;
//   final PartData? frontRightBumper;
//   final PartData? grill;
//   final PartData? frontLeftHeadLight;
//   final PartData? frontRightHeadLight;
//   final PartData? frontLicensePlate;
//   final PartData? frontRightSidePanel;
//   final PartData? frontLeftSidePanel;
//   final PartData? leftUpperHood;
//   final PartData? leftLowerHood;
//   final PartData? centerUpperHood;
//   final PartData? centerLowerHood;
//   final PartData? rightUpperHood;
//   final PartData? rightLowerHood;
//   final PartData? leftUpperWindShield;
//   final PartData? leftLowerWindShield;
//   final PartData? centerUpperWindShield;
//   final PartData? centerLowerWindShield;
//   final PartData? rightUpperWindShield;
//   final PartData? rightLowerWindShield;

//   const VehicleFront({
//     Key? key,
//     required this.width,
//     this.frontCenterBumper,
//     this.frontLeftBumper,
//     this.frontLeftHeadLight,
//     this.frontLicensePlate,
//     this.frontRightBumper,
//     this.frontRightHeadLight,
//     this.frontRightSidePanel,
//     this.grill,
//     this.frontLeftSidePanel,
//     this.leftUpperHood,
//     this.leftLowerHood,
//     this.centerUpperHood,
//     this.centerLowerHood,
//     this.rightUpperHood,
//     this.rightLowerHood,
//     this.centerLowerWindShield,
//     this.centerUpperWindShield,
//     this.leftLowerWindShield,
//     this.leftUpperWindShield,
//     this.rightLowerWindShield,
//     this.rightUpperWindShield,
//   }) : super(key: key);

//   List<PartData> _parts() {
//     List<PartData> widgetParts = [];
//     List<PartData?> parts = [
//       frontCenterBumper,
//       frontLeftBumper,
//       frontLeftHeadLight,
//       frontLicensePlate,
//       frontRightBumper,
//       frontRightHeadLight,
//       frontRightSidePanel,
//       grill,
//       frontLeftSidePanel,
//       leftUpperHood,
//       leftLowerHood,
//       centerUpperHood,
//       centerLowerHood,
//       rightUpperHood,
//       rightLowerHood,
//       leftUpperWindShield,
//       leftLowerWindShield,
//       centerUpperWindShield,
//       centerLowerWindShield,
//       rightUpperWindShield,
//       rightLowerWindShield,
//     ];

//     parts.removeWhere((element) => element == null);
//     parts.forEach((element) {
//       widgetParts.add(element!);
//     });
//     return widgetParts;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MarkedImage(
//       assetPath: 'assets/front.png',
//       width: width,
//       parts: _parts(),
//     );
//   }
// }
