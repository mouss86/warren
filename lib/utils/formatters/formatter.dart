
import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-YYY').format(date);
  }
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'fr_CFA', symbol: 'CFA').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber) {
     // Vérifier si le numéro est valide
    if (phoneNumber.length != 10 || !phoneNumber.startsWith(RegExp(r'0[157]'))) {
      throw FormatException('Numéro de téléphone invalide');
    }
     // Ajouter un espace tous les deux chiffres
    final buffer = StringBuffer();
    for (int i = 0; i < phoneNumber.length; i++) {
      buffer.write(phoneNumber[i]);
      if (i % 2 == 1 && i != phoneNumber.length - 1) {
        buffer.write(' ');
      }
    }
     return buffer.toString();
 
  }
}
