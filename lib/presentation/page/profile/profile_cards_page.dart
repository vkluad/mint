import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/card/cards_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/bottom_sheet_button.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/missing_cards_box.dart';
import 'package:mint/presentation/widget/profile_card_container.dart';
import 'package:mint/theme/palette.dart';

@RoutePage()
class ProfileCardsPage extends StatefulWidget {
  const ProfileCardsPage({super.key});

  @override
  State<ProfileCardsPage> createState() => _ProfileCardsPageState();
}

class _ProfileCardsPageState extends State<ProfileCardsPage> {
  final _cardsBloc = sl<CardsBloc>();

  @override
  void initState() {
    super.initState();
    _cardsBloc.add(const LoadCardsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leadingWidth: 75.w,
        leading: Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: CustomBackButton(
            callback: () => context.router.navigate(const ProfileRoute()),
          ),
        ),
      ),
      bottomSheet: BottomSheetButton(
        callback: () => showCardAddSheet(context, isNavigatedFromProfile: true),
        text: AppLocalizations.of(context)!.addCard,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<CardsBloc, CardsState>(
        bloc: _cardsBloc,
        builder: (context, state) {
          return state.when(
            error: () => Text(AppLocalizations.of(context)!.error),
            loaded: (cards) {
              return SafeArea(
                child: cards.isNotEmpty
                    ? ListView.builder(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                          bottom: 50.h,
                        ),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 8.h),
                            child: Slidable(
                              key: UniqueKey(),
                              endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {
                                      _cardsBloc.add(
                                        RemoveCardEvent(
                                          cards[index].id,
                                        ),
                                      );
                                    },
                                    backgroundColor: Palette.whiteErrorRed,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(8.r),
                                    ),
                                  ),
                                ],
                              ),
                              child: ProfileCardContainer(
                                cardNumber: cards[index].number,
                              ),
                            ),
                          );
                        },
                        itemCount: cards.length,
                      )
                    : const MissingCardsBox(),
              );
            },
            loading: () => const CustomLoadingIndicator(),
            initial: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
