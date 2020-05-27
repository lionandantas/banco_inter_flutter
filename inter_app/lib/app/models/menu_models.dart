import 'package:flutter/material.dart';

class MenuModel {
  String name;
  IconData icon;
  
  MenuModel({this.name, this.icon}) {
    name = this.name;
    icon = this.icon;
  }

  static List<List<MenuModel>> createMenu(
      List<MenuModel> records) {
    var menu = List<List<MenuModel>>();
    for (int i = 0; i < records.length; i += 3) {
      var items = records.skip(i).take(3).toList();
      menu.add(items);
    }
    return menu;
  }
}