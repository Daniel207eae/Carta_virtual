import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:menu_restaurante/vistas/BookingPage.dart';
import 'package:menu_restaurante/vistas/RegisterPage.dart';
import 'package:menu_restaurante/vistas/MenuPage.dart';
import 'package:menu_restaurante/vistas/SedesPage.dart';
import 'package:menu_restaurante/wcwidgets/wcwidgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    Size size = mediaquery.size;
    wcidgets(context);

    print(size.width);
    print(size.height);

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
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  TitleText("Bienvenido"),
                  Spacer(flex: 5)
                ],
              ),
              Spacer(flex: 1),
              VistaButton(
                (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return MenuPage();
                      }
                      )
                  );
                },
                "Conocer Menú",
                size
              ),
              Spacer(),
              VistaButton(
                (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return HomePage();
                      }
                      )
                  );
                },
                "Realizar reserva",
                size
              ),
              Spacer(),
              VistaButton(
                (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginPage();
                      }
                      )
                  );
                },
                "Registrarse",
                size
              ),
              Spacer(),
              VistaButton(
                (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SedesPage();
                      }
                      )
                  );
                },
                "Conocer sedes",
                size
              ),
              Spacer(flex: 2),
              Text("Version 1.0    :)")
            ],
          )
        ),
      ),
    );
  }
}