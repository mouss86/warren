import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';


// GridLayout est la meme chose que GridView.builder dans le fichier achat.dart(itemCount: itemCount,il faut juste mettre le nombre de itemau 2ieme itemCount)
// itemBuilder: (_, index) => ProductCardVertical(),. 

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 289,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent:  mainAxisExtent,
        ),
        itemBuilder: itemBuilder);
  }
}
