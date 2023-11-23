class CardRegExp {
  static final visaPattern = RegExp(r'^4[0-9]{12}(?:[0-9]{3})?$');
  static final mastercardPattern = RegExp(r'^5[1-5][0-9]{14}$');
  static String formatCardString(String text) {
    final firstDigits = text.substring(0, 12);
    final subString = firstDigits.replaceAll(
      RegExp(r'^[a-zA-Z0-9_\-=@,\.;]+$'),
      '**** **** ****',
    );
    final lastDigits = text.substring(text.length - 4, text.length);
    return '$subString $lastDigits';
  }
}
