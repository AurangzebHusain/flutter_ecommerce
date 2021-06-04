import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_ecommerce/models/catalog.dart';
import 'package:flutter_ecommerce/utils/routes.dart';
import 'package:flutter_ecommerce/widgets/drawer.dart';
import 'package:flutter_ecommerce/widgets/itemwidgets.dart';

class HomePage extends StatefulWidget {
  Function darkModeHandler;

  HomePage(@required this.darkModeHandler);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    loadData();
  }
  loadData() async{
    await Future.delayed(Duration(seconds: 4));
  var catalogJson=await rootBundle.loadString("assets/files/catalog.json");
  var decodedData=jsonDecode(catalogJson);
  var productsData=decodedData["products"];
  CatalogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
  setState(() {

  });
  // print(productsData);
  }
  @override
  Widget build(BuildContext context) {
    // final dummyList=List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CatalogModel.items!=null&&CatalogModel.items.isNotEmpty?ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context,index){
            return ItemWidget(item:CatalogModel.items[index]);
          },
        ):Center(child: CircularProgressIndicator(),),
      ),
      drawer: MyDrawer(widget.darkModeHandler),
    );
  }
}
