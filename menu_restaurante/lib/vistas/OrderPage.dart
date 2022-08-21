import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_restaurante/vistas/PayoutPage.dart';
import 'package:menu_restaurante/wcwidgets/CupertinoMenu.dart';

import '../wcwidgets/wcwidgets.dart';

class Orderpage extends StatelessWidget {
  const Orderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Spacer(flex: 1),
              Row(
                children: [
                  Spacer(),
                  TitleText("Realizar pedido"),
                  Spacer(flex: 8),
                  ClosseButton(context, Colors.orange.shade100, "X"),
                  Spacer(flex: 1)
                ],
              ),
              Spacer(flex: 3),
              OptionsButton((){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CupertinoPicker(
                      itemExtent: size.height*0.08,
                      onSelectedItemChanged: (int s){
                        switch (s) {
                          case 0:
                            Platosfuertes();
                            break;
                          case 1:
                            entradas();
                            break;
                          case 2:
                            bebidas();
                            break;  
                          default:
                        }
                      },
                      children: [
                        TitleText("Platos Fuertes"),
                        TitleText("Entradas"),
                        TitleText("Bebidas"),
                      ],
                    backgroundColor: Colors.orange.shade100,);;
                  }));
              }, "Productos"),
              Spacer(),
              OptionsButton((){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return sedes();
                }));
              }, "Sede"),
              Spacer(),
              SubText("ID usuario:"),
              Campos_de_texto(false, 0.5, 0.05),
              Spacer(flex: 2),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return PayoutPage();
                      }
                      )
                  );
                },
                child: Container(
                  width: size.width*0.6,
                  height: size.height*0.1,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(187, 100, 54, 13),
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 228, 193, 121)
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text("Pedir",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: size.height*0.05,
                      color: Color.fromARGB(255, 245, 204, 122)
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2)
            ],
          ),
        )
      ),
    );
  }
}