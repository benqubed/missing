import 'package:flutter/material.dart';
import 'package:missing/widgets/custom_button.dart';
import 'package:missing/constants.dart' as constants;

class DealDesking extends StatefulWidget {
  const DealDesking({Key? key}) : super(key: key);

  @override
  State<DealDesking> createState() => _DealDeskingState();
}

class _DealDeskingState extends State<DealDesking> {
  @override
  Widget build(BuildContext context) {
    List<OptItem> _loanItems = [
      OptItem(
        title: "Loan",
        customFunc: () {},
      ),
      OptItem(
        title: "Lease",
        customFunc: () {},
      ),
      OptItem(
        title: "Cash",
        customFunc: () {},
      ),
    ];

    List<OptItem> _loanLenItems = [
      OptItem(
        title: "48 mon.",
        customFunc: () {},
      ),
      OptItem(
        title: "60 mon.",
        customFunc: () {},
      ),
      OptItem(
        title: "72 mon.",
        customFunc: () {},
      ),
      OptItem(
        title: "84 mon.",
        customFunc: () {},
      ),
    ];

    List<OptItem> _creditItems = [
      OptItem(
        title: "500-649",
        customFunc: () {},
      ),
      OptItem(
        title: "650-719",
        customFunc: () {},
      ),
      OptItem(
        title: "720-850",
        customFunc: () {},
      ),
    ];

    List<SliderOpt> _sliderItems = [
      const SliderOpt(
        title: "Vehicle Price",
        progress: 30,
      ),
      const SliderOpt(
        title: "Monthly Payment",
        progress: 30,
      ),
      const SliderOpt(
        title: "Cash Down",
        progress: 30,
      ),
    ];

    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(children: [
        ..._widgetWrapThree(_loanItems),
        Text(
          "Loan Length",
          style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ..._widgetWrap(_loanLenItems),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Credit Score (Get Actual Score)",
          style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        ..._widgetWrap(_creditItems),
        const SizedBox(
          height: 20,
        ),
        ..._sliderItems,
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

  List<Widget> _widgetWrapThree(_props) {
    List<Widget> widgets = [];

    for (int i = 0; i < _props.length; i += 3) {
      Widget item1 = _props[i];
      Widget item2 = i + 1 >= _props.length ? const SizedBox() : _props[i + 1];
      Widget item3 = i + 2 >= _props.length ? const SizedBox() : _props[i + 2];
      widgets.add(
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Expanded(
                child: item1,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: item2,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: item3,
              ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }

  List<Widget> _widgetWrap(_props) {
    List<Widget> widgets = [];

    for (int i = 0; i < _props.length; i += 2) {
      Widget item1 = _props[i];
      Widget item2 = i + 1 >= _props.length ? const SizedBox() : _props[i + 1];
      // Widget item3 = i + 2 >= _props.length ? const SizedBox() : _props[i + 2];
      // Widget item4 = i + 3 >= _props.length ? const SizedBox() : _props[i + 3];
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
              // const SizedBox(
              //   width: 5.0,
              // ),
              // Expanded(
              //   child: item3,
              // ),
              // const SizedBox(
              //   width: 5.0,
              // ),
              // Expanded(
              //   child: item4,
              // ),
            ],
          ),
        ),
      );
    }

    return widgets;
  }
}

class OptItem extends StatelessWidget {
  final String title;
  final VoidCallback customFunc;

  const OptItem({
    Key? key,
    required this.title,
    required this.customFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: customFunc,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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

class SliderOpt extends StatelessWidget {
  final String title;
  final int progress;

  const SliderOpt({
    Key? key,
    required this.title,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.refresh,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "\$",
                style: Theme.of(context).textTheme.headline6!.copyWith(),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                width: 100,
                height: 30,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(border: Border.all(color: constants.dividerColor), borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  decoration: const InputDecoration(isCollapsed: true, border: InputBorder.none),
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Stack(children: [
            Container(
              height: 30.0,
              width: MediaQuery.of(context).size.width,
              color: constants.whiteColor,
            ),
            Positioned(
              top: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Container(
                  height: 3.0,
                  width: MediaQuery.of(context).size.width,
                  color: constants.lightColor,
                ),
              ),
            ),
            Positioned(
              top: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(2.0),
                child: Container(
                  height: 3.0,
                  width: 100,
                  color: constants.lightBlueColor,
                ),
              ),
            ),
            Positioned(
              top: 1,
              left: 95,
              child: ClipOval(
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  color: constants.lightBlueColor,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
