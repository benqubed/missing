import 'dart:io';

import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/models/welcome_data.dart';
import 'package:missing/steps/step_1.dart';
import 'package:missing/steps/step_2.dart';
import 'package:missing/steps/step_3.dart';
import 'package:missing/steps/step_4.dart';
import 'package:missing/steps/step_5.dart';
import 'package:missing/steps/step_6.dart';
import 'package:missing/steps/step_7.dart';
import 'package:missing/steps/step_8.dart';
import 'package:missing/steps/step_9.dart';

class ScreenThirteen extends StatefulWidget {
  const ScreenThirteen({Key? key}) : super(key: key);

  @override
  _ScreenThirteenState createState() => _ScreenThirteenState();
}

class _ScreenThirteenState extends State<ScreenThirteen> {
  int slideIndex = 0;
  late PageController controller;

  final List _slides = [
    StepOne(),
    StepTwo(),
    StepThree(),
    StepFour(),
    StepFive(),
    StepSix(),
    StepSeven(),
    StepEight(),
    StepNine(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text('Trade Questionaire'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help),
            )
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[..._slides],
          ),
        ),
        bottomSheet: slideIndex != 8
            ? Container(
                //margin: const EdgeInsets.symmetric(vertical: 16),
                padding: const EdgeInsets.all(15.0),
                color: Colors.grey.shade50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    slideIndex != 0
                        ? TextButton(
                            onPressed: () {
                              controller.animateToPage(slideIndex - 1, duration: const Duration(milliseconds: 400), curve: Curves.linear);
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.arrow_back_ios,
                                  size: 18.0,
                                  color: constants.lightColor,
                                ),
                                Text(
                                  "BACK",
                                  style: theme.textTheme.bodyText1!.copyWith(
                                    color: constants.lightColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox(),
                    TextButton(
                      onPressed: () {
                        controller.animateToPage(slideIndex + 1, duration: const Duration(milliseconds: 500), curve: Curves.linear);
                      },
                      child: Row(
                        children: [
                          Text(
                            "NEXT",
                            style: theme.textTheme.bodyText1!.copyWith(
                              color: constants.lightColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 18.0,
                            color: constants.lightColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.all(15.0),
                color: Colors.grey.shade50,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        controller.animateToPage(slideIndex - 1, duration: const Duration(milliseconds: 400), curve: Curves.linear);
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            size: 18.0,
                            color: constants.lightColor,
                          ),
                          Text(
                            "BACK",
                            style: theme.textTheme.bodyText1!.copyWith(
                              color: constants.lightColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
  }
}
