import 'package:catalog_app/model/cart.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/model/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'add_to_cart.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                5.heightBox,
                catalog.name.text.bold.lg.color(context.accentColor).make(),
                catalog.desc.text.xs
                    .color(Colors.grey)
                    .textStyle(context.captionStyle)
                    .make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mH4,
                  children: [
                    "\$${catalog.price}".text.bold.red500.xl.make(),
                    AddToCart(catalog: catalog),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ).square(120).color(context.cardColor).rounded.make().py8();
  }
}

