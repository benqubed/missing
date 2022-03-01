import 'package:flutter/material.dart';
import 'package:missing/widgets/custom_button.dart';
import 'package:missing/constants.dart' as constants;

class DealTerms extends StatelessWidget {
  const DealTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          customRow(context, "Vehicle Price", "\$34,475"),
          customRow(context, "Rebates and Incentives", "(\$1,500)"),
          customRow(context, "F&I Products", "\$1,850"),
          customRow(context, "Tax, Title & REG.", "\$1,125"),
          customRow(context, "Dealer Fees", "\$375"),
          customRow(context, "Down Payment", "\$1,500"),
          customRow(context, "Trade-In", "(\$2,500)"),
          const Divider(
            color: constants.lightColor,
            thickness: 3.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          customRow(context, "Amount Financed", "\$35,325"),
          const SizedBox(
            height: 30.0,
          ),
          CustomButton(
            title: "Send Deal to Customer",
            customFunction: () {},
          ),
        ],
      ),
    );
  }

  Widget customRow(BuildContext context, leading, trailing) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              leading,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(),
            ),
          ),
          Text(
            trailing,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(),
          ),
        ],
      ),
    );
  }
}
