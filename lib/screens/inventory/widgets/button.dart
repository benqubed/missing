import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final double elevation;

  Button({
    required this.title,
    required this.onPressed,
    required this.color,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    var isIOS = Platform.isIOS;
    return Padding(
      padding: EdgeInsets.all(0),
      //padding: const EdgeInsets.only(top: 0.0),
      child: Row(
        children: [
          Expanded(
            child: isIOS != null && isIOS
                ? CupertinoButton.filled(
                    child: Text(title),
                    onPressed: onPressed,
                    padding: EdgeInsets.zero,
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: color,
                        elevation: elevation,
                        textStyle: TextStyle(color: Colors.white),
                        padding: EdgeInsets.all(6)),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: onPressed,
                  ),
          ),
        ],
      ),
    );
  }
}

class LinkButton extends StatefulWidget {
  final String title;
  final VoidCallback callbackFunction;

  LinkButton({required this.title, required this.callbackFunction});

  @override
  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.callbackFunction,
        child: Text(
          widget.title,
          style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline, fontSize: 18.0),
        ));
  }
}

class RoundedButton extends StatefulWidget {
  final String title;
  final VoidCallback callbackFunction;
  final Color colors;

  RoundedButton({required this.title, required this.colors, required this.callbackFunction});

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.callbackFunction,
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: widget.colors,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.blue)),
      ),
      child: Text(
        widget.title,
        style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: 'CenturyGothic'),
      ),
    );
  }
}

class RoundedRedButton extends StatefulWidget {
  final String title;
  final VoidCallback callbackFunction;

  RoundedRedButton({required this.title, required this.callbackFunction});

  @override
  _RoundedRedButtonState createState() => _RoundedRedButtonState();
}

class _RoundedRedButtonState extends State<RoundedRedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        color: Colors.red,
        elevation: 5.0,
        onPressed: widget.callbackFunction,
      ),
    );
  }
}

class RoundedGreyButton extends StatefulWidget {
  final String title;
  final VoidCallback callbackFunction;

  RoundedGreyButton({required this.title, required this.callbackFunction});

  @override
  _RoundedGreyButtonState createState() => _RoundedGreyButtonState();
}

class _RoundedGreyButtonState extends State<RoundedGreyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        color: Colors.grey,
        elevation: 5.0,
        onPressed: widget.callbackFunction,
      ),
    );
  }
}
