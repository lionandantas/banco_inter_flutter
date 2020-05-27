import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interapp/app/app_module.dart';
import 'package:interapp/app/modules/signin/splash/splash_bloc.dart';
import 'package:interapp/app/modules/signin/signin_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(SigninModule());
  SplashBloc bloc;

  setUp(() {
    bloc = SigninModule.to.get<SplashBloc>();
  });

  group('SplashBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<SplashBloc>());
    });
  });
}
