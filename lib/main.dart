import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trade/ui_screens/login_screens/registration_screen.dart';
import 'dart:convert';

void main() async {
  //JSON conversion
  //String objText = '{"name": "bezkoder", "age": 30}';

 // User user = User.fromJson(jsonDecode(objText));

  //print(user);
  WidgetsFlutterBinding.ensureInitialized();
  //await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en',),Locale('ur',),Locale('hi',),Locale('fr',),Locale('ar',),],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        saveLocale: true,
        child:MyApp(),
    ),
      );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates ,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Roznamcha App',
      home:RegistrationScreen(),
    );
  }
}


