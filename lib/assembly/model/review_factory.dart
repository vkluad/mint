import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mint/assembly/factory.dart';

import 'package:mint/data/model/review_dto.dart';

class ReviewDtoFromJsonFactory
    implements Factory<ReviewDto, Map<String, dynamic>> {
  @override
 ReviewDto create(Map<String, dynamic> param) => ReviewDto(
        toId: param['toId'] as String,
        fromId: param['fromId'] as String,
        fromName: param['fromName'] as String,
        rate: param['rate'] as int,
        sent: (param['sent'] as Timestamp).toDate(),
        review: param['review'] as String?,
        reviewId: param['reviewId'] as String,
      );
}
