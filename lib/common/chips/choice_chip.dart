import 'package:flutter/material.dart';
import 'package:warren/common/widgets/success_screen/custom_shapes/containers/circular_container.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../utils/constants/colors.dart';

class ChoiceClip extends StatelessWidget {
  const ChoiceClip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    final color = THelperFunctions.getColor(text);

    return ChoiceChip(
      label: isColor 
          ? const SizedBox()  // Affiche un SizedBox vide si c'est une couleur
          : Text(text),        // Sinon, affiche le texte

      selected: selected,
      onSelected: onSelected,
      
      labelStyle: TextStyle(color: selected ? TColors.white : null),

      avatar: isColor
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: color!,
            )
          : null,
      
      labelPadding: isColor ? const EdgeInsets.all(0) : null,  // Pas de padding si c'est une couleur
      padding: isColor ? const EdgeInsets.all(0) : null,       // Pas de padding si c'est une couleur

      selectedColor: Colors.green,  // La couleur lorsque l'élément est sélectionné

      shape: isColor ? const CircleBorder() : null, // Forme circulaire si c'est une couleur

      backgroundColor: isColor ? color! : null, // Si c'est une couleur, utilise cette couleur pour le fond
    );
  }
}
