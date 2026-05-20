import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shawn_app/controllers/theme_controller.dart';

void main() {
  testWidgets("Testar mudança de tema", (tester) async {
    var controller = ThemeController(isDark: false);

    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: controller,
        child: MaterialApp(home: Scaffold(body: Text("Teste"))),
      ),
    );
    
    expect(controller.isDark, isFalse);

    controller.trocarTema();
    await tester.pump();

    expect(controller.isDark, isTrue);
  });
}
