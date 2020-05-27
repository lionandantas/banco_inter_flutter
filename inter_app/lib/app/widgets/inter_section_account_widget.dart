import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interapp/app/config/AppStyles.dart';
import 'dart:ui';
import 'package:interapp/app/widgets/button_inter_widget.dart';

class InterSectionAccount extends StatelessWidget {
  final String name;
  final String account;
  final void Function() onPressed;

  InterSectionAccount(
      {@required this.name, @required this.account, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16, top: 25, left: 15, right: 15),
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppStyles.greyMedium,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: <Widget>[
          Row(
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
                      child: Text(
                        name,
                        style: TextStyle(
                            color: AppStyles.primaryColor, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: <Widget>[
                  Text(
                    account,
                    style: TextStyle(fontSize: 16.5),
                  ),
                ],
              ),
              Spacer(),
              OutlineButton(
                onPressed: () {},
                child: Text(
                  "ALTERAR".toUpperCase(),
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 230,
                child: ButtonInter(
                  text: "ENTRAR",
                  onPressed: onPressed,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
