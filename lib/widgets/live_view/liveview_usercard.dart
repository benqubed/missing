import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class LiveViewCard extends StatefulWidget {
  final String name;
  final int percentage;
  final String time;
  final String desking;
  final String nextUser;
  // bool isUp;
  // bool isNext;
  LiveViewCard({Key? key, required this.name, required this.percentage, required this.time, required this.desking, required this.nextUser}) : super(key: key);

  @override
  State<LiveViewCard> createState() => _LiveViewCardState();
}

class _LiveViewCardState extends State<LiveViewCard> with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 80,
                      width: 8.0,
                      color: theme.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                      ),
                      Text(
                        "${widget.percentage}% Complete",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.caption!.copyWith(color: constants.blackFaded),
                      ),
                      Text(
                        widget.time,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.caption!.copyWith(color: constants.lightColor),
                      ),
                      Text(
                        widget.nextUser,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.caption!.copyWith(color: constants.blackFaded),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Desking: ",
                            style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                          ),
                          TextSpan(
                            text: widget.desking,
                            style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          height: 20.0,
                          width: 200,
                          color: constants.greyColor,
                        ),
                      ),
                      Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Container(
                            height: 20.0,
                            width: 80,
                            color: theme.primaryColor,
                          ),
                        ),
                      )
                    ])
                    // SizedBox(
                    //   width: 200,
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(4),
                    //     child: LinearProgressIndicator(
                    //       value: controller.value,
                    //       semanticsLabel: 'Progress Tracke',
                    //       minHeight: 20.0,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Divider(
            color: Colors.grey.shade200,
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}
