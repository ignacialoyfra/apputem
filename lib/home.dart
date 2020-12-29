//import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:apputem/submenu.dart';
//import 'package:apputem/card.dart';

class Home extends StatelessWidget {
  final bool centerTitle = true;
  final TextStyle textStyletitle = TextStyle(
      color: Colors.white, fontSize: 25.0, fontStyle: FontStyle.italic);
  final TextStyle textStylesubtitle = TextStyle(
      color: Colors.white, fontSize: 15.0, fontStyle: FontStyle.italic);
  final double iconsize = 20.0;
  //final TextStyle textStyle = TextStyle(color: Colors.white, fontSize: 15.0);

  Drawer getDrawer(BuildContext context) {
    var info = AboutListTile(
        child: Text("Infomacion App"),
        applicationIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.info));
    var header = DrawerHeader(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/drawer_background.jpg"),
                //"https://png.pngtree.com/thumb_back/fh260/background/20201104/pngtree-vector-abstract-futuristic-circuit-board-and-mesh-line-illustration-high-computer-image_458707.jpg"
                //"https://www.wallpapertip.com/wmimgs/10-104710_hexagon-36-fondos-de-pantalla-3d.jpg"
                //"https://images6.alphacoders.com/585/585940.png"
                //"https://noticias.utem.cl/wp-content/uploads/2017/07/portada-DSC03617.jpg"

                fit: BoxFit.cover)),
        child: Container(
          alignment: Alignment(-1.0, -1.0),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(
                  "https://accesodirecto.utem.cl/wp-content/uploads/2020/10/logo-utem-2-1024x301-1.png")
            ],
          ),
          //child: Center(
          //child: Text(
          //"API REST",
          //style: TextStyle(fontSize: 20.0, color: Colors.white),
          //)
          //)
        ));
    ListTile getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList() {
      return ListView(
        children: [
          header,
          getItem(Icon(Icons.home), "Inicio", "/"),
          getItem(Icon(Icons.gradient), "Acciones", "/l"),
          getItem(Icon(Icons.insert_chart_outlined), "Graficos", "/graficos"),
          getItem(Icon(Icons.contacts), "Integrantes", "/x"),
          getItem(Icon(Icons.import_contacts_outlined), "ONU", "/i"),
          info,
          getItem(Icon(Icons.arrow_forward), "Salir", "/")
        ],
      );
    }

    return Drawer(child: getList());
  }

  @override
  Widget build(BuildContext context) {
    //return cuerpo();
    return Scaffold(
      appBar: AppBar(
        //title: Text("Api REST"),
        backgroundColor: Colors.purple[100],
        centerTitle: centerTitle,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: AssetImage("assets/image/fondo_request.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Image.network(
                  "https://accesodirecto.utem.cl/wp-content/uploads/2020/10/logo-utem-2-1024x301-1.png"),
              Card(
                color: Colors.blue[100],
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                margin: EdgeInsets.all(10.0),
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      title: Center(
                          child: Text(
                        "Proyecto REST",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0),
                      )),
                      subtitle: Center(
                          child: Text(
                        "Computación Paralela y distribuida",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubMenu()),
                      );
                    },
                    minWidth: 100.0,
                    height: 40.0,
                    color: Colors.purple[100],
                    child: Text(
                      "Empezar",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      drawer: getDrawer(context),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
            image: AssetImage("assets/image/fondo_request.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        children: [
          Image.network(
              "https://accesodirecto.utem.cl/wp-content/uploads/2020/10/logo-utem-2-1024x301-1.png"),
          Card(
            color: Colors.white,
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  title: Center(
                      child: Text(
                    "Proyecto REST",
                    style: TextStyle(fontSize: 25.0),
                  )),
                  subtitle:
                      Center(child: Text("Computacion Paralela y distribuida")),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                onPressed: () {},
                minWidth: 100.0,
                height: 40.0,
                color: Colors.purple[100],
                child: Text(
                  "Empezar",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    ),

    //child: Center(child: Text("Holi")),
  );
}
