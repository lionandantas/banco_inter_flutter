import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:interapp/app/config/AppStyles.dart';

class InterLogo extends StatelessWidget {
  InterLogo();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Center(
        child: Container(
          height: 150,
          width: 130,
          child: Image.asset(
            'assets/images/banco_inter_logo.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: AppStyles.gradient,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
    );
  }
}
