import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shawn_app/pages/login_page.dart';

void main() {
  testWidgets('Testar Formulario', (tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    await tester.tap(find.byType(ElevatedButton));

    await tester.pump();

    expect(find.text("O campo não pode ficar vazio"), findsOneWidget);
  });
}
