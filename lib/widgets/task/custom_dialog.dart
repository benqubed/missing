import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/icons/custom_icons_icons.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.only(top: 10.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.close),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(CustomIcons.vehicle),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Vehicle(s) of Interest",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                    text: "2018 Audi A6 Premium - STG5678",
                    style: theme.textTheme.bodyText1!.copyWith(),
                  ),
                ),
                RichText(
                  maxLines: 3,
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "\$32,768",
                      ),
                      TextSpan(text: " | "),
                      TextSpan(
                        text: "11,875mi",
                      ),
                    ],
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                    text: "2018 Audi A6 Premium - STG5678",
                    style: theme.textTheme.bodyText1!.copyWith(),
                  ),
                ),
                RichText(
                  maxLines: 3,
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "\$32,768",
                      ),
                      TextSpan(text: " | "),
                      TextSpan(
                        text: "11,875mi",
                      ),
                    ],
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
              ],
            ),
            Divider(
              color: constants.dividerColor,
              thickness: 1.5,
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(CustomIcons.vehicle),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Trade Vehicle(s)",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                    text: "2016 Subaru Forrester - STG5678",
                    style: theme.textTheme.bodyText1!.copyWith(),
                  ),
                ),
                RichText(
                  maxLines: 3,
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "\$9,765 - outstanding",
                      ),
                      TextSpan(text: " | "),
                      TextSpan(
                        text: "Chase Auto 11,875mi",
                      ),
                    ],
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                // Row(
                //   children: [
                //     Text(
                //       "\$9,765 - outstanding",
                //       maxLines: 2,
                //       style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                //     ),
                //     const SizedBox(
                //       width: 5.0,
                //     ),
                //     Container(height: 18, width: 1, color: constants.blackFaded),
                //     const SizedBox(
                //       width: 5.0,
                //     ),
                //     Flexible(
                //       child: Text(
                //         "Chase Auto 11,875mi",
                //         maxLines: 2,
                //         style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
            Divider(
              color: constants.dividerColor,
              thickness: 1.5,
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.money),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text("Budget", maxLines: 1, style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded)),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "Payment - ",
                      ),
                      TextSpan(
                        text: "\$475",
                      ),
                    ],
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "Price - ",
                      ),
                      TextSpan(
                        text: "\$35,000",
                      ),
                    ],
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: const [
                      TextSpan(
                        text: "Current Payment - ",
                      ),
                      TextSpan(
                        text: "\$315,76",
                      ),
                    ],
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
              ],
            ),
            Divider(
              color: constants.dividerColor,
              thickness: 1.5,
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.wb_sunny),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Needs / Preferences",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      "Perfomance, prefers V6",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                    Text(
                      "Need bigger vehicle",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: constants.dividerColor,
              thickness: 1.5,
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.timer),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Purchase Timeline",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      "Within 30 days",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: constants.dividerColor,
              thickness: 1.5,
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(CustomIcons.query),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "About Customer",
                      maxLines: 1,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      "Ohio State graduate Works for Dallas Cowboys Wife/'s June",
                      maxLines: 8,
                      style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: constants.blackFaded),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
