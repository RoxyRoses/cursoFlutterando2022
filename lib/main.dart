import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeWidget(), // instancia a classe widget
    );
}
}

class HomeWidget extends StatelessWidget{
  const HomeWidget({Key? key}) : super(key: key); //key - cria construtor de key que e um identificador
 // dara entender que se tratao de um widget a classe
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: const Text('Home'),
    ),
    body: const Center(child: Text("flutterando"),),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add), onPressed: () {
      print('clicou');
    }),); //const palavra reservada
  }
}
