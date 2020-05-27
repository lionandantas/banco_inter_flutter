import 'package:flutter/material.dart';
import 'package:interapp/app/models/menu_models.dart';
import 'package:interapp/app/utils/hexcolor.dart';
import 'package:interapp/app/widgets/menu_inter_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool isget = false;
  var menu = List<List<MenuModel>>();
  List listMenu = [
    ['Pedido Coxinha', Icons.kitchen],
    ['Pedido Kibe ', Icons.laptop_mac],
    ['Prêmios Combo', Icons.library_books],
    ['Histórico Pedido', Icons.local_car_wash],
    ['Relátorio Compras', Icons.find_in_page],
    ['Veículo', Icons.category],
    ['Informações de Preço', Icons.youtube_searched_for],
    ['Produtos', Icons.event_busy],
    ['Contato', Icons.fingerprint],
    ['Sobre', Icons.warning],
  ];

  var i;
  var number;
  int intVar;
  double valueContainerMenu;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     var menuItens = List<MenuModel>();
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menuItens.add(
        MenuModel(name: 'Pedido Coxinha', icon: Icons.kitchen));
    menu = MenuModel.createMenu(menuItens);

    i = 0;
    number = menu.length;

    intVar = (number.toInt() * 108 + number.toInt() * 8);

    valueContainerMenu = intVar.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      ListView(children:
       <Widget>[
      Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                HexColor('#ed7016'),
                HexColor('#ed9616'),
              ])),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 42, left: 4, right: 4),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 6),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Fictícia Distribuidora Ltda',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Saldo em conta',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "RS ",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0,00",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: isget ? valueContainerMenu : 108,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: ListView.builder(
                      physics: new NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      itemCount: menu.length,
                      itemBuilder: (context, position) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: MenuInter(list: menu[position]),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isget = isget ? false : true;
                      });
                    },
                    child: Container(
                      height: 38,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: Center(
                        child: Icon(
                          isget
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: HexColor('#ed7016'),
                          size: 45.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
    ]),
    );
  }
}
