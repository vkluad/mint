import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/review/review_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/rating_button.dart';
import 'package:mint/presentation/widget/sheet_title.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ReviewSessionScreen extends StatefulWidget {
  const ReviewSessionScreen({
    required this.booking,
    super.key,
  });
  final Booking booking;
  @override
  State<ReviewSessionScreen> createState() => _ReviewSessionScreenState();
}

class _ReviewSessionScreenState extends State<ReviewSessionScreen> {
  final TextEditingController _controller = TextEditingController();
  final _bloc = sl<BookingBloc>();
  final _reviewBloc = sl<ReviewBloc>();
  final _authBloc = sl<AuthBloc>();
  Map<String, double> buttons = {
    'Helpful': 5,
    'Good': 4,
    'Poor': 3,
    'Not helpful': 2,
    'Not recommend': 1,
  };
  int? selectedButton;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            return ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
              child: Scaffold(
                resizeToAvoidBottomInset: true,
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SheetTitle(
                        text: AppLocalizations.of(context)!.reviewSession,
                        callback: () {
                          context.router.navigate(const DoctorsRoute());
                          _bloc
                              .add(UpdateBookingStatusEvent(widget.booking.id));
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.h, top: 32.h),
                        child: Text(
                          AppLocalizations.of(context)!.howConsultation,
                          style: TextStyles.headline.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedButton = index;
                                });
                              },
                              child: ReviewButton(
                                text: buttons.keys.elementAt(index),
                                rating: buttons.values.elementAt(index),
                                isSelected: selectedButton == index,
                              ),
                            );
                          },
                          itemCount: buttons.length,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.h, top: 32.h),
                        child: Text(
                          AppLocalizations.of(context)!.describeExperience,
                          style: TextStyles.headline.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.h,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 10.w),
                          height: 85.h,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r)),
                          ),
                          child: TextField(
                            cursorColor: Theme.of(context).primaryColor,
                            controller: _controller,
                            maxLines: 2,
                            style: TextStyles.body1.copyWith(
                              color: Theme.of(context).primaryColor,
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: AppLocalizations.of(context)!.notesHint,
                              border: InputBorder.none,
                              hintStyle: TextStyles.body1.copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.color,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 16.h,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: CupertinoButton(
                              color: Palette.mainBlue,
                              disabledColor: Palette.mainBlue.withOpacity(0.5),
                              onPressed: selectedButton != null
                                  ? () {
                                      context.router
                                          .navigate(const ThanksRoute());
                                      _bloc.add(
                                        UpdateBookingStatusEvent(
                                          widget.booking.id,
                                        ),
                                        
                                      );
                                      _reviewBloc.add(
                                      SendReviewEvent(
                                          review: _controller.text,
                                          sent: DateTime.now(),
                                          fromId: user.id,
                                          fromName: user.firstName != null ? '${user.firstName} ${user.lastName}' : ' ',
                                          rate: 5 - selectedButton!,
                                          toId: widget.booking.doctorId,
                                        ),
                                      );
                                    }
                                  : null,
                              child: Text(
                                AppLocalizations.of(context)!.leaveReview,
                                style: const TextStyle(color: Palette.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },  orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
