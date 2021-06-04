import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catalog.dart';
import 'package:flutter_ecommerce/utils/routes.dart';
import 'package:flutter_ecommerce/widgets/drawer.dart';
import 'package:flutter_ecommerce/widgets/itemwidgets.dart';

class HomePage extends StatelessWidget {
  Function darkModeHandler;

  HomePage(@required this.darkModeHandler);

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context,index){
          return ItemWidget(item:dummyList[index]);
        },
      ),
      drawer: MyDrawer(darkModeHandler),
    );
  }
}
