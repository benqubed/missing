import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;

class ScreenFive extends StatefulWidget {
  const ScreenFive({Key? key}) : super(key: key);

  @override
  _ScreenFiveState createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  final List<ComplianceList> _compList = [
    const ComplianceList(title: "Expired Driver's License"),
    const ComplianceList(title: "Synthetic Fraud"),
    const ComplianceList(title: "OFAC"),
    const ComplianceList(title: "MLA"),
  ];

  @override
  Widget build(BuildContext context) {
    bool isVerified = true;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Compliance'),
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
          children: [
            SizedBox(
              child: isVerified ? _verified() : _unverified(),
            ),
            Divider(
              height: 30.0,
              color: constants.dividerColor,
            ),
            ..._compList,
          ],
        ),
      ),
    );
  }

  Widget _unverified() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Id Verification",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Identity Not Verified",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.normal),
            ),
          ],
        )),
        const SizedBox(
          height: 20.0,
        ),
        const Icon(
          Icons.warning,
          color: constants.redColor,
        ),
      ],
    );
  }

  Widget _verified() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Id Verification",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Identity Resolution Overried Request Approved",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(fontWeight: FontWeight.normal),
            ),
          ],
        )),
        const SizedBox(
          width: 40.0,
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: constants.goldColor,
            ),
            color: constants.goldColor,
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        )
      ],
    );
  }
}

class ComplianceList extends StatelessWidget {
  final String title;
  const ComplianceList({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(),
              ),
            ),
            const Icon(Icons.hourglass_bottom),
          ],
        ),
        Divider(
          height: 30.0,
          color: constants.dividerColor,
        ),
      ],
    );
  }
}
