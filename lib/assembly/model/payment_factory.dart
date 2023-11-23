import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/payment_dto.dart';

class PaymentDtoFromJsonFactory
    implements Factory<PaymentDto, Map<String, dynamic>> {
  @override
  PaymentDto create(Map<String, dynamic> param) => PaymentDto(
        phoneNumber: param['phoneNumber'] as String,
        currency: param['currency'] as String,
        orderAmount: param['orderAmount'] as int,
      );
}
