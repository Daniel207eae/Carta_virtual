import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_restaurante/vistas/RegisterPage.dart';
import 'package:menu_restaurante/vistas/PayoutPage.dart';
import 'package:menu_restaurante/vistas/SedesPage.dart';
import 'package:menu_restaurante/wcwidgets/wcwidgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void fechaseleccionada(DateTime dateTime) {}

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
                  TitleText(" Realizar Reserva"),
                  Spacer(flex: 8),
                  ClosseButton(context,
                    Colors.orange.shade100,
                    "X",
                  ),
                  Spacer(flex: 1)
                ],
              ),
              
              const Spacer(flex: 3),
              SubText("Fecha:"),
              largeButton(
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DatePickerDialog(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(DateTime.now().year + 1, 12, 31));
                      }
                    )
                  );
                }, 
                const Color.fromARGB(255, 252, 240, 230), 
                "Fecha:"
              ),
              Spacer(),
              SubText("Hora:"),
              largeButton(
                () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TimePickerDialog(initialTime: TimeOfDay.now());
                  }));
                }, 
                const Color(0xFFF2E8DF),
                "Seleccione su hora:"
              ),
              Spacer(),
              SubText("Sede"),
              largeButton(
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SedesPage();
                      }
                      )
                  );
                }, 
                const Color(0xFFF2E8DF),
                "Seleccione su sede:"
              ),
              Spacer(flex: 2),
              SubText("ID usuario:"),
              Campos_de_texto(false, 0.5, 0.05),
              Spacer(),
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
                  width: size.width*0.5,
                  height: size.height*0.05,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                    ),
                  child: Center(
                    child: Text(
                      "¿No es usuario?",
                      style: TextStyle(
                        color: Color.fromARGB(197, 66, 52, 220),
                        decoration: TextDecoration.underline,
                        fontSize: size.height*0.02,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 4),
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
                  width: size.width*0.55,
                  height: size.height*0.075,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(187, 100, 54, 13),
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 228, 193, 121)
                      ),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text("Reservar",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: size.height*0.05,
                      color: Color.fromARGB(255, 245, 204, 122)
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 5)
            ],
          ),
        ),
      ),
    );
  }
}