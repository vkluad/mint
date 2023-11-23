class ReviewDto {
  ReviewDto({
    required this.toId,
    required this.fromId,
    required this.fromName,
    required this.rate,
    required this.sent,
    required this.review,
    required this.reviewId,
  });
  final String reviewId;
  final String? review;
  final DateTime sent;
  final String toId;
  final String fromId;
  final String fromName;
  final int rate;
}
