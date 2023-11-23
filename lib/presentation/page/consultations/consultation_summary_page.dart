import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';

import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/consultation_summary_image.dart';
import 'package:mint/presentation/widget/consultation_summary_name.dart';
import 'package:mint/presentation/widget/consultation_summary_price.dart';
import 'package:mint/presentation/widget/consultation_summary_prof.dart';
import 'package:mint/presentation/widget/consultation_summary_text.dart';
import 'package:mint/presentation/widget/consultation_summary_textfield.dart';
import 'package:mint/presentation/widget/date_summary.dart';
import 'package:mint/presentation/widget/rating_bar.dart';
import 'package:mint/theme/palette.dart';

@RoutePage()
class ConsultationSummaryPage extends StatefulWidget {
  const ConsultationSummaryPage({
    required this.doctor,
    required this.plannedDate,
    super.key,
  });
  final Doctor doctor;
  final DateTime plannedDate;

  @override
  State<ConsultationSummaryPage> createState() =>
      _ConsultationSummaryPageState();
}

class _ConsultationSummaryPageState extends State<ConsultationSummaryPage> {
  final TextEditingController _controller = TextEditingController();

  final _authBloc = sl<AuthBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          child: CupertinoButton(
            color: Palette.mainBlue,
            child: Text(
              AppLocalizations.of(context)!.book,
              style: const TextStyle(color: Palette.white),
            ),
            onPressed: () => context.router.replace(
              CheckoutRoute(
                doctor: widget.doctor,
                plannedDate: widget.plannedDate,
                description: _controller.text,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 75.w,
        leading: CustomBackButton(
          callback: context.router.pop,
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            authenticated: (user) {
              final userFavourites = user.favourites ?? [];
              return SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 106.h,
                        width: 376.w,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SummaryImage(imageUrl: widget.doctor.image),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 11.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SummaryDoctorName(name: widget.doctor.name),
                                  SummaryProfession(doctor: widget.doctor),
                                  const Spacer(),
                                  SizedBox(
                                    height: 16.h,
                                    width: 30.h,
                                    child: CustomRatingBar(
                                      rating: double.parse(
                                        widget.doctor.rating.toString(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            SummaryPrice(
                              price: widget.doctor.price.toString(),
                              callback: () async {
                                if (userFavourites.contains(widget.doctor.id)) {
                                  await showRemoveFromFavouriteDialog(
                                    name: widget.doctor.name,
                                    context: context,
                                    removeCallback: () {
                                      _doctorBloc.add(
                                        RemoveFromFavouritesEvent(
                                          widget.doctor.id,
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  _doctorBloc.add(
                                    MarkAsFavouriteEvent(
                                      widget.doctor.id,
                                    ),
                                  );
                                }
                              },
                              isFavourite:
                                  userFavourites.contains(widget.doctor.id),
                            )
                          ],
                        ),
                      ),
                      const ConsultationSummaryHeader(),
                      DateSummaryBox(plannedDate: widget.plannedDate),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.h,
                        ),
                        child: SummaryTextField(controller: _controller),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
