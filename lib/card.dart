import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget icon;

  MyCard({this.icon, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,

        //child: Center(
        child: Container(
            padding: EdgeInsets.symmetric(),
            color: Colors.white,
            width: 400,
            height: 120,
            //alignment: Alignment.center,
            child: Column(
              children: <Widget>[this.title, this.subtitle, this.icon],
            )));
  }
}
