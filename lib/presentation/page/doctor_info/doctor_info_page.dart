import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';

import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/bloc/review/review_bloc.dart';
import 'package:mint/presentation/page/doctor_info/doctor_view.dart';
import 'package:mint/presentation/widget/bottom_sheet_button.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/review_box.dart';

import 'package:mint/theme/text_styles.dart';

@RoutePage()
class DoctorDetailsPage extends StatefulWidget {
  const DoctorDetailsPage({required this.doctor, super.key, this.callback});
  final Doctor doctor;
  final VoidCallback? callback;

  @override
  State<DoctorDetailsPage> createState() => _DoctorDetailsPageState();
}

class _DoctorDetailsPageState extends State<DoctorDetailsPage>
    with TickerProviderStateMixin {
  final _reviewBloc = sl<ReviewBloc>();
  final _authBloc = sl<AuthBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  @override
  void initState() {
    _reviewBloc.add(const GetReviewsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheetButton(
        callback: () =>
            showDatePickerSheet(context: context, doctor: widget.doctor),
        text: AppLocalizations.of(context)!.book,
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            authenticated: (user) {
              final userFavourites = user.favourites ?? [];
              return SafeArea(
                child: DefaultTabController(
                  length: 3,
                  child: NestedScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    headerSliverBuilder: (context, isScrolled) {
                      return [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          collapsedHeight: 535.h,
                          flexibleSpace: BlocBuilder<DoctorBloc, DoctorState>(
                            bloc: _doctorBloc,
                            builder: (context, state) {
                              return BlocBuilder<ReviewBloc, ReviewState>(
                                bloc: _reviewBloc,
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    orElse: () => const SizedBox.shrink(),
                                    initial: () => const SizedBox.shrink(),
                                    loading: () =>
                                        const CustomLoadingIndicator(),
                                    loaded: (reviews) {
                                      final reviewList = reviews
                                          .where(
                                            (review) =>
                                                review.toId ==
                                                    widget.doctor.id &&
                                                review.review != '' &&
                                                review.review != null,
                                          )
                                          .toList();
                                      final countReviews = reviewList.length;
                                      var sumReviews = 0;
                                      for (final review in reviewList) {
                                        sumReviews += review.rate;
                                      }
                                      final doctorRef = FirebaseFirestore
                                          .instance
                                          .collection('doctors')
                                          .doc(widget.doctor.id);
                                      // ignore: cascade_invocations
                                      doctorRef.update({
                                        'rating': sumReviews / countReviews,
                                      });
                                      return DoctorView(
                                        sumReviews: sumReviews,
                                        countReviews: countReviews,
                                        isFavourite: userFavourites
                                            .contains(widget.doctor.id),
                                        favCallback: () async {
                                          if (userFavourites
                                              .contains(widget.doctor.id)) {
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
                                        callback: widget.callback?.call,
                                        doctor: widget.doctor,
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        SliverPersistentHeader(
                          delegate: DoctorInfoDelegate(
                            TabBar(
                              tabs: [
                                Tab(
                                  text: AppLocalizations.of(context)!.about,
                                ),
                                Tab(
                                  text: AppLocalizations.of(context)!.education,
                                ),
                                Tab(
                                  text: AppLocalizations.of(context)!.reviews,
                                )
                              ],
                              labelStyle: TextStyles.tab.copyWith(
                                fontSize: 16.sp,
                              ),
                              labelPadding: EdgeInsets.zero,
                              splashBorderRadius: BorderRadius.zero,
                              splashFactory: NoSplash.splashFactory,
                              indicatorWeight: 1,
                              indicatorColor: Theme.of(context).primaryColor,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Theme.of(context).primaryColor,
                            ),
                            Theme.of(context).scaffoldBackgroundColor,
                          ),
                          floating: true,
                          pinned: true,
                        )
                      ];
                    },
                    body: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: TabBarView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: [
                          SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                '${widget.doctor.description}',
                                style: TextStyles.body1.copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Text(
                                '${widget.doctor.educationDesc}',
                                style: TextStyles.body1.copyWith(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          SafeArea(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  ReviewBox(
                                    doctorId: widget.doctor.id,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            loading: () => const CustomLoadingIndicator(),
          );
        },
      ),
    );
  }
}
