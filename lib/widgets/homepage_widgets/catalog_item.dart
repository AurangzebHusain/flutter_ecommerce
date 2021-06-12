import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';
import 'package:flutter_ecommerce/widgets/homepage_widgets/catalog_image.dart';
import 'package:flutter_ecommerce/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required this.catalog}) : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            CatalogImage(image: catalog.image),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.color(MyTheme.darkBluishColor).lg.bold.make(),
                    catalog.description.text.make(),
                    10.heightBox,
                    ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: Vx.mOnly(right: 8),
                        children: [
                          "\$${catalog.price}".text.bold.xl.make(),
                          ElevatedButton(onPressed: () {},
                              style:ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    StadiumBorder(),
                                  )
                              ),child: Text("Buy"))
                        ])
                  ],
                ))
          ],
        )).white.roundedLg.square(150).make().py16();
  }
}
