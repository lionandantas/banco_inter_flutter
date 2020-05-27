import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:interapp/app/config/AppStyles.dart';

class InterPag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 115,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppStyles.greyMedium,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 12),
              height: 40,
              child: Image.asset(
                'assets/images/interpag.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.none,
                    ),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25.0,
                  child: Container(
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        color: AppStyles.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Pagar",
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              )
            ],
          ),
          SizedBox(
            width: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.none,
                    ),
                    shape: BoxShape.circle),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25.0,
                  child: Container(
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        color: Color(0xFFFF6D08),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Receber",
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
