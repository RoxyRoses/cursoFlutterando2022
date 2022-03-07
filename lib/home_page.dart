import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

class HomeWidget extends StatelessWidget{
  const HomeWidget({Key? key}) : super(key: key); //key - cria construtor de key que e um identificador
 // dara entender que se tratao de um widget a classe
  @override
  Widget build(BuildContext context) {

    var controlador = HomeController.of(context); // passa o contexto, assina
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: const Text('Home'),
    ),
    body:  Center(
      child: Text('flutterando ${controlador.valor}'),
      ),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add), onPressed: () {
        controlador.incremento();    }),); //const palavra reservada
  }
}

