import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:interapp/app/config/AppStyles.dart';

class ButtonInter extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  ButtonInter({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.all(13.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: AppStyles.primaryColor,
      textColor: Colors.white,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}