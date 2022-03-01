import 'package:flutter/material.dart';
import 'package:missing/constants.dart' as constants;
import 'package:missing/icons/custom_icons_icons.dart';

class FollowUpText extends StatefulWidget {
  const FollowUpText({Key? key}) : super(key: key);

  @override
  _FollowUpTextState createState() => _FollowUpTextState();
}

class _FollowUpTextState extends State<FollowUpText> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final String templateValue =
        "Good Morning, Mr. Daniel; this is Joe Bloe with Highline Mercedes Benz. I want to thank you for coming into the dealership yesterday. I look forward to seeing you on Wednesday for a test drive. If you need anything before then, please 'don’t' hesitate to call or text me. My direct line here are the dealership is (321) 654 -0987 or you can text me back at this number. Have a great day!";
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text(
            'John Daniel: (123) 456 - 7890',
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(10.0),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                ListTile(
                  leading: Icon(Icons.self_improvement),
                  title: Text(
                    "Text Options",
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: const Icon(
                        Icons.check,
                        color: constants.whiteColor,
                      ),
                      color: theme.primaryColor,
                    ),
                  ),
                  title: Text(
                    "Use a template (34)",
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: theme.primaryColor,
                        size: 30,
                      )),
                ),
                ListTile(
                  onTap: () {},
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        border: Border.all(color: theme.primaryColor),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  title: Text(
                    "Write my own message",
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.5,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    CustomIcons.notes,
                    color: constants.blackFaded,
                  ),
                  title: Text(
                    "Write / edit Text here: ",
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.blackFaded),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: '',
                        hintStyle: TextStyle(color: constants.greyColor),
                        isCollapsed: true,
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      initialValue: templateValue,
                      maxLines: null,
                      style: theme.textTheme.bodyText2!.copyWith(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Send",
                          style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                        ),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                      ),
                    ))
              ])),
            )
          ],
        ));
  }
}
