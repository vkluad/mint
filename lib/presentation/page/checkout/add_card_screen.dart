import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/domain/entity/card.dart';

import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/card/cards_bloc.dart';
import 'package:mint/presentation/widget/card_error.dart';
import 'package:mint/presentation/widget/card_number_textfield.dart';
import 'package:mint/presentation/widget/cvv_text_field.dart';
import 'package:mint/presentation/widget/error_text.dart';
import 'package:mint/presentation/widget/save_card_checkbox.dart';
import 'package:mint/presentation/widget/sheet_title.dart';
import 'package:mint/theme/palette.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({
    this.callback,
    super.key,
    this.isNavigatedFromProfile,
  });
  final void Function(BankCard card)? callback;
  final bool? isNavigatedFromProfile;

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _bloc = sl<CardsBloc>();
  final TextEditingController cardController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  bool isCardValid = false;
  bool isDateValid = false;
  bool isCodeValid = false;
  bool isChecked = false;

  @override
  void dispose() {
    cardController.dispose();
    dateController.dispose();
    codeController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    dateController.addListener(_formatDate);
  }

  void _formatDate() {
    final text = dateController.text;
    if (text.length == 2 && !text.contains('/')) {
      dateController
        ..text = '$text/'
        ..selection = TextSelection.fromPosition(
          TextPosition(offset: dateController.text.length),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SheetTitle(
                  text: AppLocalizations.of(context)!.addCardDetails,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 24.h,
                ),
                child: CardNumberTextField(
                  callback: (value) {
                    setState(() {
                      isCardValid = isValidCardNumber(value);
                    });
                  },
                  controller: cardController,
                ),
              ),
              if (!isCardValid && cardController.text.isNotEmpty)
                ErrorText(text: AppLocalizations.of(context)!.wrongCardNumber),
              Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                  bottom: 5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16.w),
                          child: CardDetailsTextField(
                            hintText: 'MM/YY',
                            callback: (value) {
                              setState(() {
                                isDateValid = isValidDate(value);
                              });
                            },
                            controller: dateController,
                          ),
                        ),
                        CardDetailsTextField(
                          hintText: 'CVC/CVV',
                          callback: (value) {
                            setState(() {
                              isCodeValid = isValidCode(value);
                            });
                          },
                          controller: codeController,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CardError(
                isDateValid: isDateValid,
                isDateNotEmpty: dateController.text.isNotEmpty,
                isCodeValid: isCodeValid,
                isCodeNotEmpty: codeController.text.isNotEmpty,
              ),
              if (widget.isNavigatedFromProfile != null &&
                  !widget.isNavigatedFromProfile!)
                SaveCardCheckbox(
                  callback: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  isChecked: isChecked,
                ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.h,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CupertinoButton(
                    color: Palette.mainBlue,
                    disabledColor: Palette.mainBlue.withOpacity(0.5),
                    onPressed: isCardValid && isDateValid && isCodeValid
                        ? () {
                            if (isChecked) {
                              _bloc.add(
                                AddCardEvent(
                                  cardController.text.replaceAll(' ', ''),
                                  dateController.text,
                                  codeController.text,
                                ),
                              );
                            } else if (widget.isNavigatedFromProfile != null &&
                                widget.isNavigatedFromProfile!) {
                              _bloc.add(
                                AddCardEvent(
                                  cardController.text.replaceAll(' ', ''),
                                  dateController.text,
                                  codeController.text,
                                ),
                              );
                            } else {
                              widget.callback?.call(
                                BankCard(
                                  number:
                                      cardController.text.replaceAll(' ', ''),
                                  date: dateController.text,
                                  code: codeController.text,
                                  id: '',
                                ),
                              );
                            }
                            context.router.pop();
                          }
                        : null,
                    child: Text(
                      AppLocalizations.of(context)!.addCard,
                      style: const TextStyle(color: Palette.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
