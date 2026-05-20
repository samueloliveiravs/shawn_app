import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shawn_app/routes/app_routes.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("apptitle".tr()),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('wellcome'.tr(), style: TextStyle(fontSize: 28)),
          Text('options'.tr(), style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.setLocale(Locale('pt', 'BR'));
                },
                child: Text('PT-BR'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(Locale('en', 'US'));
                },
                child: Text('EN-US'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.materias);
            },
            child: Text("Avançar"),
          ),
        ],
      ),
    );
  }
}
