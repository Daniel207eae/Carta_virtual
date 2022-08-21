import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_restaurante/vistas/OrderPage.dart';

import '../wcwidgets/CupertinoMenu.dart';
import '../wcwidgets/wcwidgets.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    Size size = mediaquery.size;
    wcidgets(context);
    
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange.shade100,
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Row(
                children: [
                  Spacer(),
                  TitleText("Menú"),
                  Spacer(flex: 8),
                  ClosseButton(context, Colors.orange.shade100, "X"),
                  Spacer(flex: 1)
                ],
              ),
              Spacer(flex: 2),
              OptionsButton((){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Platosfuertes();
                  }));
              }, "Plato fuerte"),
              Spacer(),
              OptionsButton((){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return entradas();
                  }));
              }, "Entrada"),
              Spacer(),
              OptionsButton((){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return bebidas();
                  }));
              }, "Bebidas"),
              Spacer(flex: 2),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context){
                      return Orderpage();
                    }
                  ));
                },
                child: Container(
                  height: size.height*0.1,
                    width: size.width*0.2,
                    child: Center(
                      child: Image(image: AssetImage("Assets/Carrito_de_compra.png"),
                        height: size.height*0.15,
                        width: size.width*0.15,
                        color: Color.fromARGB(255, 125, 170, 80),),
                    ),
                ),
              ),
              Spacer(flex: 2)
            ],
          )
        )
      )
    );
  }
}