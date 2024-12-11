
class TpricingCalculator {
  // Calculer le prix total en fonction des taxes et frais d'envoi
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculer les frais d'envoi et retourner le résultat formaté en chaîne de caractères
  static String getFormattedShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculer le montant des taxes et retourner le résultat formaté en chaîne de caractères
  static String getFormattedTaxAmount(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // Obtenir le taux de taxe en fonction de la localisation
  static double getTaxRateForLocation(String location) {
    // Retourne le taux de taxe pour la localisation donnée
    return 0.18; // Exemple de taux de taxe de 18%
  }

  // Obtenir le coût d'envoi en fonction de la localisation
  static double getShippingCost(String location) {
    // Retourne les frais d'envoi pour la localisation donnée
    return 2000; // Exemple de frais de transport en francs CFA
  }

  // sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart){
  // return cart.items.map((e) => e.Price).fold(0,(PreviousPrice, currentPrice) => previousPrice + currentPrice);
  //}
}
