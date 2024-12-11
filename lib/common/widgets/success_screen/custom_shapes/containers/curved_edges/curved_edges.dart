import 'package:flutter/material.dart';

class TcustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Déclarer correctement la variable 'path' pour éviter un conflit avec la classe Path
    Path path = Path();
    
    // Commencer à partir du coin supérieur gauche
    path.lineTo(0, size.height);

    // Définir la première courbe (point de contrôle et point final)
    final firstCurve = Offset(0, size.height - 20);  // Point de contrôle de la courbe
    final lastCurve = Offset(30, size.height - 20);  // Point final de la courbe

    // Tracer la première courbe quadratique
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // Définir la deuxième courbe (point de contrôle et point final)
    final secondFirstCurve = Offset(0, size.height - 20);  // Point de contrôle de la courbe
    final secondLastCurve = Offset(size.width -30, size.height - 20);  // Point final de la courbe (coordonnée ajustée)

    // Tracer la deuxième courbe quadratique
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    // Définir la troisieme courbe (point de contrôle et point final)
    final thirdFirstCurve = Offset(size.width, size.height - 20);  // Point de contrôle de la courbe
    final thirdLastCurve = Offset(size.width, size.height);  // Point final de la courbe (coordonnée ajustée)

    // Tracer la troisieme courbe quadratique
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    // Continuer jusqu'au coin supérieur droit
    path.lineTo(size.width, 0);

    // Fermer le chemin
    path.close();
    
    // Retourner le chemin tracé
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; // Retourne true si le clipper doit être re-défini
  }
}
