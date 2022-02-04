import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  apertarBotao() {
    print('opa, eu aqui');
  }

  // @override
  // Widget build(BuildContext context){
  //   return Text('teste');
  // }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: apertarBotao,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Lets see images'),
        ),
      ),
    );
  }
}
