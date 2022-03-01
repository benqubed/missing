import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: constants.dividerColor,
      appBar: AppBar(
        title: const Text("My Schedule"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            padding: const EdgeInsets.all(10.0),
            color: constants.whiteColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your shift has been successfully posted!", style: theme.textTheme.bodyText2!.copyWith()),
                Text("We will notify you once someone has picked it!", style: theme.textTheme.bodyText2!.copyWith()),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel Request", style: Theme.of(context).textTheme.bodyText2!.copyWith()),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 2.0, color: Theme.of(context).primaryColor),
                          shape: const StadiumBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Dismis Notice",
                          style: Theme.of(context).textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                        ),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.0),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
