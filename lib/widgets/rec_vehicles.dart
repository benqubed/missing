import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'dart:math' as math;

class RecVehicleCard extends StatefulWidget {
  final String makeName;
  final int year;
  final String model;
  final String vin;
  final int vehicleStock;
  final double price;
  final double mileage;
  final String exteriorColor;
  final int days;
  final String status;

  const RecVehicleCard({
    Key? key,
    required this.makeName,
    required this.year,
    required this.model,
    required this.vin,
    required this.vehicleStock,
    required this.price,
    required this.mileage,
    required this.exteriorColor,
    required this.days,
    required this.status,
  }) : super(key: key);

  @override
  _RecVehicleCardState createState() => _RecVehicleCardState();
}

class _RecVehicleCardState extends State<RecVehicleCard> {
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    var great = Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: constants.greenColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Center(
        child: Icon(
          Icons.arrow_upward,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );

    var good = Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: constants.lightGreen,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Transform.rotate(
          angle: 45 * math.pi / 180,
          child: const Icon(
            Icons.arrow_upward,
            color: Colors.white,
            size: 30.0,
          ),
        ),
      ),
    );

    var avg = Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Center(
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );

    _getStatus() {
      if (widget.status == "Great") {
        return great;
      } else if (widget.status == "Good") {
        return good;
      } else {
        return avg;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      '${widget.year} ${widget.makeName} ${widget.model}',
                      style: theme.textTheme.bodyText2!.copyWith(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'VIN: ${widget.vin}',
                    style: theme.textTheme.bodyText2!.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Stock # : ${widget.vehicleStock}',
                    style: theme.textTheme.bodyText2!.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Price : \$${widget.price} | ${widget.mileage} mi | ${widget.exteriorColor} | ${widget.days} days',
                    maxLines: 2,
                    style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _getStatus(),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.status,
                  style: theme.textTheme.bodyText2!.copyWith(),
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: constants.dividerColor,
          height: 30.0,
        )
      ],
    );
  }
}
