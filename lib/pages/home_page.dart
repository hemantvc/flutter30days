 import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  int days = 30;
  String lable = "Hariom";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hariom StoreApp"),
      ),
      body: Center (
        child: Container(
          child: Text("$lable ${days}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
