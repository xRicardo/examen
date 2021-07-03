//@dart=2.9
import 'package:examen/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

// routes:<String,WidgetBuilder> {
//   '/' : (BuildContext context) => HomePage(),
//   '/categoria' : (BuildContext context) => CategoriaPage(),
//   '/detalle' : (BuildContext context) => DetallePage(),
// },
