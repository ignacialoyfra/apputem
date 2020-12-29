import 'package:flutter/material.dart';
import 'package:apputem/list_country.dart';
import 'package:apputem/members.dart';
import 'package:apputem/graphics.dart';

class SubMenu extends StatefulWidget {
  static const String routeName = "/l";
  @override
  _SubMenuState createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  final bool centerTitle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        //backgroundColor: Color.fromARGB(202, 224, 238, 204),
        centerTitle: centerTitle,
        title: Text(
          "Opciones",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/fondo_request.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Column(
            children: [
              Card(
                color: Colors.purple[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                        title: Text("ONU"),
                        subtitle:
                            Text("Lista de los paises pertenecientes a la ONU"),
                        leading: new CircleAvatar(
                          backgroundImage: AssetImage(
                            "onu.png",
                          ),
                        ),
                        
                        //Image(
                        //image:
                        //  AssetImage("assets/image/United-Nations-Logo.png"),
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListCountry()),
                              );
                            },
                            child: Text("Ver"))
                      ],
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.purple[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                        contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                        title: Text("Graficos"),
                        subtitle: Text(
                            "Ilustracion de un grafico lineal, comparativo entre dos paises de la onu"),
                        leading: new CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/image/grafico3.png"),
                        )
                        // Image(
                        // image: AssetImage("assets/image/grafico3.png"),
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Graphics()),
                              );
                            },
                            child: Text("Ver"))
                      ],
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.purple[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
                      title: Text("Integrantes"),
                      subtitle: Text(
                          "Lista de los integrantes del equipo de desarrollo"),
                      leading: new CircleAvatar(
                          backgroundImage: AssetImage("assets/image/banda.png")
                          // Image(
                          //image: AssetImage("assets/image/banda.png"),)
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Members()),
                              );
                            },
                            child: Text("Ver"))
                      ],
                    )
                  ],
                ),
              ),
              // Card(
              // elevation: 10,
              // child: ClipRRect(
              // borderRadius: BorderRadius.circular(25),
              //child: Container(
              // width: 300,
              //height: 100,
              //child: Column(children: [
              //Image(
              // width: 100,
              //height: 100,
              //image:
              //  AssetImage("assets/image/United-Nations-Logo.png"),
              //fit: BoxFit.scaleDown,
              // ),
              //Expanded(
              //child: Text(
              //"Lista de paises pertenecientes a la ONU",
              //style: TextStyle(
              //  color: Colors.white,
              //fontWeight: FontWeight.bold,
              //     fontSize: 10),
              // ),
              //),
              //Expanded(
              //child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              //children: [
              //FlatButton(onPressed: () {}, child: Text("Aceptar"))
              // ],
              //),
              //)
              //]),
              //),
              //),
              //color: Colors.purple[100],
              //margin: EdgeInsets.all(15),
              //shape: RoundedRectangleBorder(
              //borderRadius: BorderRadius.circular(25),
              //),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
