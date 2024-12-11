import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    // Choisir la taille de texte en fonction de 'smallSize'
    

    return Text(
      title,
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis, // Tronque le texte si il dépasse le nombre de lignes
      textAlign: textAlign,
    );
  }
}
