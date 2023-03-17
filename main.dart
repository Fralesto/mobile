import 'package:flutter/material.dart';
import 'package:hello_world/questao1.dart';
import 'package:hello_world/desgraca.dart';
import 'package:hello_world/questao2.dart';
import 'package:hello_world/questao3.dart';
import 'package:hello_world/questao4.dart';
import 'package:hello_world/questao5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade do Vandeco',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      home: const MyHomePage(title: 'aaaaaaa',),//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  final List<Widget> _telas = [
    CalculaTemperatura(),
    Questao2(),
    Questao5()
  ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _telas[0],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              //title: Text("Minha conta")
              label: Text('data')
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              //title: Text("Meus pedidos")
              label: Text('data')
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              //title: Text("Favoritos")
              label: Text('data')
          ),
        ],
      ),
    );
  }
}
