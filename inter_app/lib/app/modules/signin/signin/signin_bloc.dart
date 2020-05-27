import 'package:flutter_modular/flutter_modular.dart';

class SigninBloc extends Disposable {
  //dispose will be called automatically by closing its streams
  String accoutNumber = "1138172-0";
  String firstName = "LIONAN";
  String lastName = "DANTAS";
  String get descriptionAccount => "$firstName $lastName\n$accoutNumber";
  String get initials => firstName.substring(0, 1) + lastName.substring(0, 1);

  @override
  void dispose() {}
}
