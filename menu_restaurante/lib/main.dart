import 'package:flutter/material.dart';
import 'package:menu_restaurante/vistas/BookingPage.dart';
import 'package:menu_restaurante/vistas/RegisterPage.dart';
import 'package:menu_restaurante/vistas/SedesPage.dart';
import 'package:menu_restaurante/vistas/WelcomePage.dart';
import 'package:menu_restaurante/wcwidgets/wcwidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPB Restaurant',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      home: WelcomePage(),
    );
  }
}
