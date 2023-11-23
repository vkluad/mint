import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/bank_card_dto.dart';

class CardDtoFromJsonFactory
    implements Factory<BankCardDto, Map<String, dynamic>> {
  @override
  BankCardDto create(Map<String, dynamic> param) => BankCardDto(
        code: param['code'] as String,
        date: param['date'] as String,
        number: param['number'] as String,
        id: param['id'] as String,
      );
}
