import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../wcwidgets/wcwidgets.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> listadeopciones = <String>["TI","CC","Cedula de extranjeria"];
final Uri _url = Uri.parse('https://www.pse.com.co/persona');

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  
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
              const Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  TitleText(" Registrar Usuario"),
                  Spacer(flex: 8),
                  ClosseButton(context, Colors.orange.shade100, "X"),
                  Spacer(flex: 1)
                ],
              ),
              Spacer(flex: 3),
              SubText("Nombre/s:"),
              Spacer(),
              Campos_de_texto(false, 0.6, 0.03),
              Spacer(flex: 2),
              SubText("Apellidos: "),
              Spacer(),
              Campos_de_texto(false, 0.6, 0.03),
              const Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      SubText("Numero:"),
                      Campos_de_texto(false, 0.6, 0.05),
                    ],
                  ),
                  Spacer(flex: 1),
                  Column(
                    children: [
                      SubText("Tipo:"),
                       Campos_de_texto(false, 0.2, 0.05),
                    ],
                  ),
                  Spacer(flex: 2)
                ],
              ),
              Spacer(flex: 2),
              SubText("Contraseña:"),
              Campos_de_texto(true, 0.6, 0.05),
              Spacer(flex: 3),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Dialog(
                          child: Text("¡Usuario registrado!, Su id es: "),
                        );
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
                    child: Text("Registrar ",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: size.height*0.05,
                      color: Color.fromARGB(255, 245, 204, 122)
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 4),
              

            ],
          ),
        ),
      )
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}