import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_restaurante/vistas/LoginPage.dart';

import '../wcwidgets/wcwidgets.dart';

double Valor = 0.00;
class PayoutPage extends StatelessWidget {
  const PayoutPage({Key? key}) : super(key: key);

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
                  TitleText("Realizar Pago"),
                  Spacer(flex: 8),
                  ClosseButton(context, Colors.orange.shade100, "X"),
                  Spacer(flex: 1)
                ],
              ),
              Spacer(flex: 2),
              SubText("Productos/Servicios"),
              Container(
                height: size.height*0.2,
                width: size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Colors.brown.shade600,width: 1)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SubText("Producto")
                        //Productos
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        SubText("Valor")
                        //Valor
                      ],
                    )
                  ]
                ),
              ),
              Spacer(),
              SubText("Valor a pagar:"),
              Text(Valor.toString()+" COP",style: TextStyle(fontSize: size.height*0.045),),
              Spacer(flex: 2),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginPage();
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
                    child: Text("Pagar",style: TextStyle(
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