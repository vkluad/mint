import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/review.dart';
import 'package:mint/gen/assets.gen.dart';

import 'package:mint/presentation/bloc/review/review_bloc.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';

import 'package:mint/theme/palette.dart';

import 'package:mint/theme/text_styles.dart';

import 'package:timeago/timeago.dart' as timeago;

class ReviewBox extends StatefulWidget {
  const ReviewBox({
    required this.doctorId,
    super.key,
  });

  final String doctorId;

  @override
  State<ReviewBox> createState() => _ReviewBoxState();
}

class _ReviewBoxState extends State<ReviewBox> {
  final _blocReview = sl<ReviewBloc>();

  @override
  void initState() {
    super.initState();
    _blocReview.add(const GetReviewsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewBloc, ReviewState>(
      bloc: _blocReview,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          initial: () => const SizedBox.shrink(),
          loading: () => const CustomLoadingIndicator(),
          loaded: (reviews) {
            final doctorReviews = reviews
                .where(
                  (review) =>
                      review.toId == widget.doctorId &&
                      review.review != '' &&
                      review.review != null,
                )
                .toList();

            return Column(
              children: [
                if (doctorReviews.isEmpty)
                  const Text('This doctor has no reviews.')
                else
                  for (final review in doctorReviews)
                    _buildReviewItem(context, review),
              ],
            );
          },
        );
      },
    );
  }
}

String timeAgo(DateTime time) {
  final now = DateTime.now();
  final difference = now.difference(time);

  return timeago.format(now.subtract(difference), locale: 'en');
}

Widget _buildReviewItem(BuildContext context, Review review) {
  timeago.setLocaleMessages('en', timeago.EnMessages());

  return Padding(
    padding: EdgeInsets.only(bottom: 8.h),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
      ),
      height: 127.h,
      width: 343.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 6.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 4.h,
                        ),
                        child: Text(
                          review.fromName,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  timeAgo(review.sent),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: 
              List.generate(
                review.rate,
                (index) => SvgPicture.asset(
                  Assets.svg.filledStar,
                  colorFilter: const ColorFilter.mode(
                    Palette.mainBlue,
                    BlendMode.srcIn,
                  ),
                  height: 16.h,
                  width: 16.w,
                ),
              ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.w,
              top: 10.w,
            ),
            child: Text(
              review.review!,
              style: TextStyles.subhead,
            ),
          ),
        ],
      ),
    ),
  );
}
