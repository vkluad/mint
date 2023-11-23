import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/bank_card_dto.dart';
import 'package:mint/domain/entity/card.dart';

class CardFromDtoFactory implements Factory<BankCard, BankCardDto> {
  @override
  BankCard create(BankCardDto param) => BankCard(
        code: param.code,
        number: param.number,
        date: param.date,
        id: param.id,
      );
}
