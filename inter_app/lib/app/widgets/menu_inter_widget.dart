import 'package:flutter/material.dart';
import 'package:interapp/app/models/menu_models.dart';
import 'package:interapp/app/utils/hexcolor.dart';

class MenuInter extends StatelessWidget {
  final List<MenuModel> list;

  const MenuInter({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: list
            .map((item) => Opacity(
                  opacity: 1.0,
                  child: Container(
                    height: 105,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      color: HexColor('#FFFFFF'),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: HexColor('#E8E8E8'),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            item.icon,
                            color: HexColor('#ed7016'),
                          ),
                        ),
                        Text(
                          item.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList());
  }
}
