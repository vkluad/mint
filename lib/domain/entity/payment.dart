class Payment {
  Payment({
    required this.phoneNumber,
    required this.currency,
    required this.orderAmount,
  });
  final String phoneNumber;
  final String currency;
  final int orderAmount;
}
