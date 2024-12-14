class MyPricingCalculator {
  static double calculateTotalPrice(double prodcutPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = prodcutPrice * taxRate;

    double shippingCost = getShippedCost(location);

    double totalPrice = prodcutPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double prodcutPrice, location) {
    double shippingCost = getShippedCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double prodcutPrice, location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = prodcutPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippedCost(String location) {
    return 5.00;
  }
}
