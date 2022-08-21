import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../wcwidgets/wcwidgets.dart';

CupertinoPicker Platosfuertes(){
  return CupertinoPicker(
    itemExtent: size.height*0.3,
    onSelectedItemChanged: (int s){},
    children: [
      Column(
        children: [
          SubText("Salchipapa Cachaca"),
          Spacer(),
          Image(image: AssetImage("Assets/salchipapa_cachaca.jpg"),
            height: size.height*0.2,
            width: size.width*0.8,
          ),
          Spacer()
        ],
      ),
      Column(
        children: [
          SubText("Pizza Termino medio"),
          Spacer(),
          Image(image: AssetImage("Assets/pizza.jpg"),
            height: size.height*0.22,
            width: size.width*0.45,
            fit: BoxFit.fill,
          ),
          Spacer()
        ],
      ),
    ],
  backgroundColor: Colors.orange.shade100,);
}

CupertinoPicker entradas(){
  return CupertinoPicker(
    itemExtent: size.height*0.3,
    onSelectedItemChanged: (int s){},
    children: [
      Column(
        children: [
          SubText("Empanada Feliz"),
          Spacer(),
          Image(image: AssetImage("Assets/empanada_feliz.gif"),
            height: size.height*0.2,
            width: size.width*0.5,
            fit: BoxFit.fill,
          ),
          Spacer()
        ],
      ),
    ],
  backgroundColor: Colors.orange.shade100,);
}

CupertinoPicker bebidas(){
  return CupertinoPicker(
    itemExtent: size.height*0.3,
    onSelectedItemChanged: (int s){},
    children: [
      Column(
        children: [
          SubText("Cerveza Sovietica"),
          Spacer(),
          Image(image: AssetImage("cerveza_sovietica.jpg"),
            height: size.height*0.25,
            width: size.width*0.7,
            fit: BoxFit.fill,
          ),
          Spacer()
        ],
      ),
    ],
  backgroundColor: Colors.orange.shade100,);
}