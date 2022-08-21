import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_restaurante/vistas/WelcomePage.dart';

Size size = Size.zero;

void wcidgets(BuildContext context){
  var mediaquery = MediaQuery.of(context);
  size = mediaquery.size;
}

Text TitleText (String txt){
  return Text(
    txt,
    style: TextStyle(
      color: Colors.brown.shade600,
      fontStyle: FontStyle.italic,fontSize: size.height*0.043,
      fontWeight: FontWeight.bold
    ),
  );
}

Text SubText(String txt){
  return Text(
    txt,
    style: TextStyle(
      color: Colors.brown.shade600,
      fontSize: size.height*0.035,
    ),
  );
}

GestureDetector largeButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: size.width*0.5,
      height: size.height*0.05,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Color.fromARGB(111, 0, 0, 0),fontStyle: FontStyle.italic),
        ),
      ),
    ),
  );
}

GestureDetector ClosseButton(BuildContext context, Color bgColor, String text) {
  return GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context){
            return WelcomePage();
          }
        )
      );
    },
    child: Container(
      width: size.width*0.065,
      height: size.height*0.05,
      decoration: BoxDecoration(
          color: bgColor,
          ),
      child: Center(
        child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.height*0.05,color: Colors.brown.shade600),),
      ),
    ),
  );
}

GestureDetector OptionsButton(VoidCallback function, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      height: size.height*0.1,
      width: size.width*0.6,
      decoration: BoxDecoration(
          color: Color.fromARGB(208, 121, 76, 17),
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 219, 169, 113),
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(text, style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: size.height*0.035,
          fontStyle: FontStyle.italic
        )),
      ),
    ),
  );
}

SizedBox Campos_de_texto(bool asegurado,double ancho, double alto){
  return SizedBox(
    width: size.width*ancho,
    height: size.height*alto,
    child: TextField(
      obscureText: asegurado,
      style: TextStyle(fontSize: size.height*0.035,color: Color.fromARGB(141, 95, 2, 2)),
      textAlign: TextAlign.center,
    ),
  );
}

GestureDetector VistaButton(VoidCallback function, String text, Size size) {
  return GestureDetector(
    onTap: function,
    child: Container(
      height: size.height*0.1,
      width: size.width*0.6,
      decoration: BoxDecoration(
          color: Color.fromARGB(208, 121, 76, 17),
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 219, 169, 113),
          ),
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(text, style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: size.height*0.035,
          fontStyle: FontStyle.italic
        )),
      ),
    ),
  );
}

CupertinoPicker sedes(){
  return CupertinoPicker(
    itemExtent: size.height*0.06, 
    onSelectedItemChanged: (int s){}, 
    children: [
      Text("Laureles", style: TextStyle(fontSize: size.height*0.05),),
      Text("Robledo", style: TextStyle(fontSize: size.height*0.05),)],
    backgroundColor: Colors.orange.shade100,);
}
