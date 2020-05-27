import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interapp/app/modules/signin/signin/signin_bloc.dart';
import 'package:interapp/app/widgets/inter_logo_widget.dart';
import 'package:interapp/app/widgets/inter_pagar_widget.dart';
import 'package:interapp/app/widgets/inter_section_account_widget.dart';
import 'package:interapp/app/widgets/isafe_inter_widger.dart';

class SigninPage extends StatefulWidget {
  final String title;
  const SigninPage({Key key, this.title = "Signin"}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final appBloc = Modular.get<SigninBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Stack(
          children: <Widget>[
            InterLogo(),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InterSectionAccount(
                    name: appBloc.initials,
                    account: appBloc.descriptionAccount,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ISafeInter(),
                  SizedBox(
                    height: 10,
                  ),
                  InterPag()
                ],
              ),
            ),
          ],
        )));
  }
}
