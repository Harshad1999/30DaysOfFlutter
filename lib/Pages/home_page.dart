import 'package:flutter/material.dart';
import 'package:flutter_practice_codepur/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To 30 Days of Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
