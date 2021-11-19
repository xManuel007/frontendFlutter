import 'package:flutter/material.dart';
import 'package:frontend/movimientos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Front End',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Recepcion'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Input de cantidad
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Cantidad',
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6F35A5),
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                ),
              ),
            ),

            //Input de producto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Producto',
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6F35A5),
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                ),
              ),
            ),

            //Input de Peso
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Peso',
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6F35A5),
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                ),
              ),
            ),

            //Input de Medida
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Medida',
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6F35A5),
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                ),
              ),
            ),

            //Input de Referencia
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Referencia',
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF6F35A5),
                      fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF6F35A5)), //kPrimaryColor
                  ),
                ),
              ),
            ),

            Container(
              child: FlatButton(
                child: Text(
                  'Guardar',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                color: Colors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => movimientos()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
