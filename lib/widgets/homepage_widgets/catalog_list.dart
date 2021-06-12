import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catalog.dart';
import 'package:flutter_ecommerce/widgets/homepage_widgets/catalog_item.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return CatalogItem(catalog: catalog);
        });
  }
}