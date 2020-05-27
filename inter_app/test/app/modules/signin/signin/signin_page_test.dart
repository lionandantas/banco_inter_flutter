import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:interapp/app/modules/signin/signin/signin_page.dart';

main() {
  testWidgets('SigninPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SigninPage(title: 'Signin')));
    final titleFinder = find.text('Signin');
    expect(titleFinder, findsOneWidget);
  });
}
