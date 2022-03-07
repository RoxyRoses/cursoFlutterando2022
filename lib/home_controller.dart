import 'package:flutter/cupertino.dart';

class HomeController extends InheritedNotifier<ValueNotifier<int>> { //notifier
  HomeController({Key? key, required Widget child}) : super(key: key, child: child,
  notifier: ValueNotifier(0));

  //usado para gerenciar regra de negocio, ou seja, nada qeu altera a tela
  static HomeController of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  int get valor => notifier!.value;

  incremento(){
    notifier!.value++; //incrementar
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}
