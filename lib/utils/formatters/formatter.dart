import 'package:intl/intl.dart';

class MyFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize date format
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'es_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    return phoneNumber;
  }

  static StringBuffer internationalFormatPhoneNumber(String phoneNumber) {
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), ' ');

    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while(i < digitOnly.length){
      int groupLength = 2;
      if (i == 0 && countryCode == '+1'){
        groupLength = 3;
      }
      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if(end < digitOnly.length){
        formattedNumber.write('  ');
      }
      i = end;
    }
    return formattedNumber;
  }
}
