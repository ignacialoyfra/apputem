library font_awesome_flutter;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:apputem/card.dart';

class Members extends StatelessWidget {
  static const String routeName = "/x";

  final bool centerTitle = true;
  final double iconsize = 20.0;
  final TextStyle textStyle = TextStyle(color: Colors.white, fontSize: 15.0);
  final TextStyle textStylee =
      TextStyle(color: Colors.grey[350], fontSize: 10.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Integrantes"),
        centerTitle: centerTitle,
        backgroundColor: Colors.purple[100],
        shadowColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/fondo_request.jpg"),
                fit: BoxFit.fill)),
        padding: EdgeInsets.all(15.0),
        //color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              margin: EdgeInsets.all(10.0),
              shadowColor: Colors.grey[400],
              color: Colors.purple[50],
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 20),
                    title: Text(
                      "Ignacia Loyola Fraile",
                      style: TextStyle(fontSize: 10.0),
                    ),
                    subtitle: Text(
                      "Cursando undecimo semestre de Ingenierica civil en computacion",
                      style: TextStyle(fontSize: 8.0),
                    ),
                    leading: new CircleAvatar(
                        backgroundImage: AssetImage("assets/image/nachi.PNG")
                        //NetworkImage(
                        //"https://scontent.fscl25-1.fna.fbcdn.net/v/t1.0-9/83607816_2419391948391132_8170084350356881408_o.jpg?_nc_cat=100&ccb=2&_nc_sid=174925&_nc_ohc=2K0NFji0BCMAX9_Unu5&_nc_ht=scontent.fscl25-1.fna&oh=b30e504f2845255db0fdf537941992f5&oe=5FFFCB02",
                        //)
                        ),
                  )
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              margin: EdgeInsets.all(10.0),
              shadowColor: Colors.grey[400],
              color: Colors.purple[50],
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 20),
                      title: Text(
                        "Andres Maldonado Maldonado",
                        style: TextStyle(fontSize: 10.0),
                      ),
                      subtitle: Text(
                        "Cursando el undecimo semestre de ingenieria civil en computacion",
                        style: TextStyle(fontSize: 8.0),
                      ),
                      leading: new CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/image/personas.png")
                          //   NetworkImage(
                          //"https://scontent.fscl25-1.fna.fbcdn.net/v/t1.0-9/12191925_10208179730120629_3641921663498450568_n.jpg?_nc_cat=107&ccb=2&_nc_sid=f9d7a1&_nc_ohc=J_OTAmS2KOkAX_fENrv&_nc_ht=scontent.fscl25-1.fna&oh=b4e99e43a1b91defa7fc7c00139b11cd&oe=5FFF32D4",
                          ))
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              margin: EdgeInsets.all(10.0),
              shadowColor: Colors.grey[400],
              color: Colors.purple[50],
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                      contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 20),
                      title: Text(
                        "Mikhail Basschman Eurajula",
                        style: TextStyle(fontSize: 10.0),
                      ),
                      subtitle: Text(
                        "Cursando el undecimo semestre de ingenieria civil en computacion",
                        style: TextStyle(fontSize: 8.0),
                      ),
                      leading: new CircleAvatar(
                          backgroundImage: AssetImage("assets/image/mikaql.PNG")
                          //   NetworkImage(
                          //  "https://scontent.fscl25-1.fna.fbcdn.net/v/t1.0-9/12191925_10208179730120629_3641921663498450568_n.jpg?_nc_cat=107&ccb=2&_nc_sid=f9d7a1&_nc_ohc=J_OTAmS2KOkAX_fENrv&_nc_ht=scontent.fscl25-1.fna&oh=b4e99e43a1b91defa7fc7c00139b11cd&oe=5FFF32D4",
                          // )
                          )),
                ],
              ),
            ),

            //MyCard(
            //icon: Icon(
            //Icons.contacts,
            //color: Colors.pink[200],
            //size: iconsize,
            //),
            //title: Text("Ignacia Loyola", style: textStyle),
            //subtitle: Text("Estudiante", style: textStylee),
            //),
            //MyCard(
            //title: Text("Andres Maldonado", style: textStyle),
            //subtitle: Text("Estudiante", style: textStylee),
            //icon: Icon(Icons.contacts,
            //color: Colors.blue[900], size: iconsize)),
            //MyCard(
            //title: Text("Mikha Baschman", style: textStyle),
            //subtitle: Text("Estudiante", style: textStylee),
            //icon:
            //Icon(Icons.contacts, color: Colors.blue[900], size: iconsize),
            //)
          ],
        ),
      ),
    );
  }
}
