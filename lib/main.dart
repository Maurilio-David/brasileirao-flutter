import 'package:brasileirao/controller/theme_controller.dart';
import 'package:brasileirao/repositories/times_repository.dart';
import 'package:brasileirao/widget/checkauth.dart';
import 'package:brasileirao/widget/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  await initConfigurations();

  runApp(ChangeNotifierProvider(
      create: (context) => TimesRepository(), child: MeuAplicativo()));
}

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController.to.loadThemeMode();
    return GetMaterialApp(
      title: 'Brasileirão',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.grey,
          accentColor: Colors.white,
          accentIconTheme: IconThemeData(color: Colors.black),
          dividerColor: Colors.black45,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: Colors.deepPurpleAccent[100],
          ))),
      themeMode: ThemeMode.system,
      home: CheckAuth(),
    );
  }
}
