import 'package:interapp/app/modules/signin/splash/splash_bloc.dart';
import 'package:interapp/app/modules/signin/signin/signin_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interapp/app/modules/signin/signin/signin_page.dart';
import 'package:interapp/app/modules/signin/splash/splash_page.dart';

class SigninModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashBloc()),
        Bind((i) => SigninBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/signin', child: (_, args) => SigninPage()),
      ];

  static Inject get to => Inject<SigninModule>.of();
}
