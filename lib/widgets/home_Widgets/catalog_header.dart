import 'package:flutter/material.dart';
import 'package:flutter_practice_codepur/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog Collection".text.xl4.color(MyTheme.darkishBlue).bold.make(),
        "Trending Products".text.textStyle(context.captionStyle).bold.lg.make(),
      ],
    );
  }
}
