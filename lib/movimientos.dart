import 'package:frontend/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class movimientos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF6F35A5),
          title: Text(
            "Recepcion",
            style: TextStyle(
              color: Color(0xFFF1E6FF),
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              );
            },
          ),
        ),
        body: navigator(),
      ),
    );
  }
}

class navigator extends StatelessWidget {
  const navigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Buscar',
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), //kPrimaryColor
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey), //kPrimaryColor
              ),
            ),
          ),
        ),

        //Definicion de una fila para insertar listview en columna con la informacion
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Contenedor de la informacion de Operador
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Objetos',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ],
    );
  }
}
