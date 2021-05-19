import 'package:flutter/material.dart';

void main() => runApp(MiApphat());

class MiApphat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP HATZIRY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Inicio(title: 'Hatziry'),
    ); //App Material
  } //Constructor
} //Clase MiApphat

class Inicio extends StatefulWidget {
  Inicio({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _InicioState createState() => _InicioState();
}
class _InicioState extends State<Inicio> {
  String elegirValor;
  List listItem = [
    '1997',
    '1998',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26C6DA),
        centerTitle: true,
        title: Text(
          'BIENVENIDO A FARMACIA BLU',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LimitedBox(
              maxWidth: 350.0,
              maxHeight: 300.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://raw.githubusercontent.com/vianney097685/mis_imagenes/main/farmacia-escudero_06.jpg',
                  fit: BoxFit.cover,
                ),
              ), //fin de Imagen 
            ),

            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF56BABD),
                  ),
                ),
                labelText: 'Nombre del empleado',
              ),
            ), //fin del campo de texto
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF56BABD),
                  ),
                ),
                labelText: 'Apellidos del empleado',
              ),
            ), //fin de campo de texto
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF56BABD),
                  ),
                ),
                labelText: 'Correo electronico',
              ),
            ), //fin de textField
            SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                new Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF56BABD),
                        ),
                      ),
                      labelText: 'Fecha de nacimiento (Dia y Mes)',
                    ), //fin de Decoración de Textfield
                  ), //fin del TexField
                ),//fin de flexible
                SizedBox(
                  width: 16,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                  decoration: BoxDecoration(border: Border.all(color: Color(0xFF56BABD), width: 1), borderRadius: BorderRadius.circular(4)),
                  child: DropdownButton(
                    hint: Text(
                      "Año: ",
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                      ),
                    ),
                    dropdownColor: Color(0xFF56BABD),
                    icon: Icon(Icons.expand_more_rounded),
                    iconSize: 20,
                    underline: SizedBox(),
                    value: elegirValor,
                    onChanged: (newValue) {
                      setState(() {
                        elegirValor = newValue;
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      ); //fin de Dropdown Menu Item
                    }).toList(),
                  ), //fin de Dropdown
                ), //fin de Contenedor de Dropdown
              ], //fin de Widgets dentro de Row
            ), //fin del cuarto Row
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Aceptar'),
                  icon: Icon(Icons.check_rounded),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    minimumSize: Size(140, 50),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Cancelar'),
                  icon: Icon(Icons.close_rounded),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[800],
                    onPrimary: Colors.white,
                    minimumSize: Size(140, 50),
                  ),
                )
              ], //fin de hijos de Row
            ), //fin de row
          ], //fin de Widgets dentro de Columna
        ), //fin de Columna Principal
      ),//fin de body
    ); //fin del Scaffold
  } //fin del Constructor
} //fin de Clase Inicio
