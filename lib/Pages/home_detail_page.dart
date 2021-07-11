import 'package:flutter/material.dart';
import 'package:flutter_practice_codepur/model/catalog.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH4,
          children: [
            "\$${catalog.price}".text.bold.red500.xl3.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add To Cart".text.make(),
            ).wh(120, 50),
          ],
        ).p16(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: context.accentColor),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl3
                          .color(context.accentColor)
                          .make(),
                      catalog.desc.text.lg
                          .color(Colors.grey[700])
                          .textStyle(context.captionStyle)
                          .make(),
                      10.heightBox,
                      "Justo amet dolor stet labore justo. Gubergren ea justo voluptua sea, et et clita sea est et et kasd sed, vero diam at kasd sanctus dolor kasd elitr elitr amet. Amet no lorem sea erat clita, sea diam sea sea sanctus sit sea ut. Et sed ea voluptua sed sadipscing."
                          .text
                          .color(Colors.grey[500])
                          .textStyle(context.captionStyle)
                          .make()
                    ],
                  ).p(50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
