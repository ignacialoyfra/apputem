import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'dart:convert';

class ListCountry extends StatefulWidget {
  static const String routeName = "/i";

  @override
  _ListCountryState createState() => _ListCountryState();
}

class FlagsCountry {
  final String imageUrl;
  final String name;
  FlagsCountry({this.name, this.imageUrl});
}

List<FlagsCountry> iconFlasg = [];

class _ListCountryState extends State<ListCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: Text("Lista de paises de la ONU"),
        elevation: 1,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/fondo_request.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/paises_opts.json"),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              var myData = json.decode(snapshot.data);

              print(myData);
              print(myData.length);
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    margin: EdgeInsets.all(05.0),
                    shadowColor: Colors.grey[400],
                    color: Colors.purple[50],
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListTile(
                          title: Text(" " + myData[index]["name"]),
                          leading: Icon(Icons.ac_unit),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: myData == null ? 0 : myData.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
