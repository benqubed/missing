import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class InventoryCard extends StatefulWidget {
  final String makeName;
  final int year;
  final String model;
  final String vin;
  final int vehicleStock;
  final double price;
  final double mileage;
  final String exteriorColor;
  late bool available;

  InventoryCard({
    Key? key,
    required this.makeName,
    required this.year,
    required this.model,
    required this.vin,
    required this.vehicleStock,
    required this.price,
    required this.mileage,
    required this.exteriorColor,
    required this.available,
  }) : super(key: key);

  @override
  _InventoryCardState createState() => _InventoryCardState();
}

class _InventoryCardState extends State<InventoryCard> {
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: widget.available
                    ? Column(
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
                          const SizedBox(height: 5),
                          Text(
                            'VIN: ${widget.vin}',
                            style: theme.textTheme.bodyText2!.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Stock # : ${widget.vehicleStock}',
                            style: theme.textTheme.bodyText2!.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Price : \$${widget.price} | ${widget.mileage} mi',
                            maxLines: 2,
                            style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Color : ${widget.exteriorColor}',
                            style: theme.textTheme.bodyText2!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              '${widget.year} ${widget.makeName} ${widget.model}',
                              style: theme.textTheme.bodyText2!.copyWith(
                                color: constants.blackFaded,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'VIN: ${widget.vin}',
                            style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'The Vehicle is no longer available',
                            style: theme.textTheme.caption!.copyWith(color: constants.goldColor),
                          ),
                        ],
                      ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              widget.available
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                isSaved = !isSaved;
                                // activateBtn();
                              });
                            },
                            child: isSaved
                                ? Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: theme.primaryColor,
                                      ),
                                      color: theme.primaryColor,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 15.0,
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: theme.primaryColor,
                                      ),
                                    ),
                                  )),
                        const SizedBox(
                          height: 10.0,
                        ),
                        isSaved
                            ? Text(
                                'Saved',
                                style: theme.textTheme.caption!.copyWith(color: theme.primaryColor),
                              )
                            : const SizedBox(),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: constants.blackFaded,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Unavailable',
                          style: theme.textTheme.caption!.copyWith(color: constants.goldColor),
                        ),
                      ],
                    ),
            ],
          ),
          Divider(
            color: constants.dividerColor,
          )
        ],
      ),
    );
  }
}
