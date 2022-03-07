import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';
import 'package:hello_world/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { // context representa a aplicacao inteira
    return  MaterialApp(
      home: Center(child: HomeController(child: HomeWidget())), // instancia a classe widget - home controller e pai do home widget
    );
}
}