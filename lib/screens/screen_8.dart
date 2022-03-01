import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ScreenEight extends StatefulWidget {
  const ScreenEight({Key? key}) : super(key: key);

  @override
  _ScreenEightState createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  final List<NotificationSetting> _notifications = [
    const NotificationSetting(
      title: "Customer Record Generated Successfully",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Identity NOT Verified",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Identity Verified",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Profile Overried Requests",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Synthetic Fraud",
      isActive: true,
    ),
    const NotificationSetting(
      title: "OFAC Review",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Credit Score Disclosure",
      isActive: true,
    ),
    const NotificationSetting(
      title: "DMS Updated",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Call for Help",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Trade Vehicles Added",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Appraisal Request",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Profile Creation",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Active Duty Military",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Vehicle Appraised",
      isActive: true,
    ),
    const NotificationSetting(
      title: "CustomerApplication Complete",
      isActive: true,
    ),
    const NotificationSetting(
      title: "RouteOne Portal Update",
      isActive: true,
    ),
    const NotificationSetting(
      title: "DealerTrack Portal Update",
      isActive: true,
    ),
    const NotificationSetting(
      title: "Error Handling",
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Notification Settings'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.help),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [..._notifications],
        ),
      ),
    );
  }
}

class NotificationSetting extends StatefulWidget {
  final String title;
  final bool isActive;
  const NotificationSetting({Key? key, required this.title, required this.isActive}) : super(key: key);

  @override
  _NotificationSettingState createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool isSaved = true;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Text(
            widget.title,
            style: theme.textTheme.bodyText2!.copyWith(),
          )),
          const SizedBox(
            width: 10.0,
          ),
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
        ],
      ),
    );
  }
}
