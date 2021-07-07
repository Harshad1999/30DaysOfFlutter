import 'package:flutter/material.dart';
import 'package:flutter_practice_codepur/model/catalog.dart';
import 'package:flutter_practice_codepur/widgets/drawer.dart';
import 'package:flutter_practice_codepur/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(40, (index) => CatelogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
