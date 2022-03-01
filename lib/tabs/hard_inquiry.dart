import 'package:flutter/material.dart';
import 'package:missing/widgets/custom_button.dart';
import 'package:missing/constants.dart' as constants;

class HardInquiry extends StatefulWidget {
  const HardInquiry({Key? key}) : super(key: key);

  @override
  State<HardInquiry> createState() => _HardInquiryState();
}

class _HardInquiryState extends State<HardInquiry> {
  @override
  Widget build(BuildContext context) {
    List<CreditBureau> _creditList = [
      CreditBureau(
        title: "Equifax",
        customFunc: () {},
      ),
      CreditBureau(
        title: "Experian",
        customFunc: () {},
      ),
      CreditBureau(
        title: "TransUnion",
        customFunc: () {},
      ),
      CreditBureau(
        title: "TriMerge",
        customFunc: () {},
      ),
      CreditBureau(
        title: "AndMore",
        customFunc: () {},
      ),
    ];

    List<FicoScore> _ficoScore = [
      FicoScore(
        title: "FICO2",
        customFunc: () {},
      ),
      FicoScore(
        title: "FICO9",
        customFunc: () {},
      ),
      FicoScore(
        title: "FICO8",
        customFunc: () {},
      ),
    ];

    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        Text(
          "Credit Bureau",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ..._widgetWrap(_creditList),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Fico Score Models:",
          style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ..._widgetWrap(_ficoScore),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          title: "Submit",
          customFunction: () {},
        ),
      ]),
    );
  }

  List<Widget> _widgetWrap(_props) {
    List<Widget> widgets = [];

    for (int i = 0; i < _props.length; i += 2) {
      Widget item1 = _props[i];
      Widget item2 = i + 1 >= _props.length ? const SizedBox() : _props[i + 1];
      widgets.add(
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Expanded(
                child: item1,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: item2,
              ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }
}

class CreditBureau extends StatelessWidget {
  final String title;
  final VoidCallback customFunc;

  const CreditBureau({
    Key? key,
    required this.title,
    required this.customFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: customFunc,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: constants.dividerColor),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.primaryColor,
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                title,
                style: theme.textTheme.bodyText2!.copyWith(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FicoScore extends StatelessWidget {
  final String title;
  final VoidCallback customFunc;

  const FicoScore({
    Key? key,
    required this.title,
    required this.customFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: customFunc,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(),
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        side: MaterialStateProperty.all(BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1.5,
        )),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
