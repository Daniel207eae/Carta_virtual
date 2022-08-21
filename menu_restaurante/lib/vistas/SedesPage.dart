

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../wcwidgets/wcwidgets.dart';

class SedesPage extends StatelessWidget {
  const SedesPage({Key? key}) : super(key: key);  

  
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    Size size = mediaquery.size;

    wcidgets(context);
    
    return Scaffold(
      backgroundColor: Colors.white,
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
              const Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  TitleText(" Sedes"),
                  Spacer(flex: 8),
                  ClosseButton(context, Colors.orange.shade100, "X"),
                  Spacer(flex: 1)
                ],
              ),
              const Spacer(flex: 5),
              SubText("   Seleccion de sede: "),
              Spacer(),
              largeButton(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return sedes();
                }));
              }, 
              const Color.fromARGB(255, 252, 240, 230),
              "Ubicacion:"),
              Spacer(flex: 3),
              Image(image: AssetImage("Assets/Laureles.png"),width: size.width,height: size.height*0.5,),
              Spacer(flex: 2),
            ],
            
          ),
        ),
      ),
    );
  }
}
