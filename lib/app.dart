import 'package:flutter/material.dart';

import 'config.dart';
import 'home/home.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = Config();
  config.appFlavor = flavor;
  runAppWithFlavor(config.appName, config.appTheme);
}

runAppWithFlavor(String title,ThemeData theme){
  runApp(MyApp(title: title,theme: theme,));
}

class MyApp extends StatelessWidget {
  final String title;
  final ThemeData theme;
  const MyApp({super.key, required this.title, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: theme,
      home: MyHomePage(title: title,),
    );
  }
}