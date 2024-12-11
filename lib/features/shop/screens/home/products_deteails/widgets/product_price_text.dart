
import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText( {
    super.key, 
    this.currencySign = '',
     required this.Price, 
     this.maxLines = 1, 
     this.isLarge = false, 
     this.lineThrough = false, required title, 
    
    });
    
    final String currencySign, Price;
    final int maxLines;
    final bool isLarge;
    final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return  Text(
      currencySign + Price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ?  Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough? TextDecoration.lineThrough: null)
          :  Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough? TextDecoration.lineThrough: null),

    );
  }
}