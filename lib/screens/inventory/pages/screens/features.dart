import 'package:flutter/material.dart';

class FeaturesScreen extends StatelessWidget {
  const FeaturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Widget> _propsComfort = [
      const TextWidget(
        text: "A/C Seat(s)",
        hasLink: false,
      ),
      const TextWidget(
        text: "Memory Seat(s)",
        hasLink: false,
      ),
      const TextWidget(
        text: "Air Conditioning",
        hasLink: false,
      ),
      const TextWidget(
        text: "Panoramic Sunroof",
        hasLink: false,
      ),
      const TextWidget(
        text: "Front Seat Heaters",
        hasLink: false,
      ),
      const TextWidget(
        text: "Rear Air Conditioning",
        hasLink: false,
      ),
      const TextWidget(
        text: "Heated Stearing Wheel",
        hasLink: false,
      ),
      const TextWidget(
        text: "Rear Seat Heaters",
        hasLink: false,
      ),
      const TextWidget(
        text: "Leather Seats",
        hasLink: false,
      ),
    ];

    List<Widget> _propsEntertainment = [
      const TextWidget(
        text: "AM/FM Stereo",
        hasLink: false,
      ),
      const TextWidget(
        text: "Bose Sound System",
        hasLink: false,
      ),
      const TextWidget(text: "Android Auto", hasLink: true),
      const TextWidget(
        text: "Satelite Radio Ready",
        hasLink: false,
      ),
      const TextWidget(text: "Apple Carplay", hasLink: true),
      const TextWidget(
        text: "SiriusXM Trial Available",
        hasLink: false,
      ),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Installed Packages",
            style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextWidget(
                text: "Cold Weather Package",
                hasLink: false,
              ),
              SizedBox(
                height: 20,
              ),
              TextWidget(
                text: "Driver Assistance Package",
                hasLink: false,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Comfort",
            style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ..._comfortWrap(_propsComfort),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Entertainment",
            style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ..._comfortWrap(_propsEntertainment),
        ]),
      ),
    );
  }

  List<Widget> _comfortWrap(_props) {
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

class TextWidget extends StatelessWidget {
  final String text;
  final bool hasLink;
  const TextWidget({Key? key, required this.text, required this.hasLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return hasLink
        ? InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.blue, decoration: TextDecoration.underline),
                ),
                const Icon(
                  Icons.image,
                  color: Colors.blue,
                )
              ],
            ))
        : Text(
            text,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(),
          );
  }
}
