import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:mint/backbone/card_reg_exp.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/card.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/page/booking/date_selector_screen.dart';
import 'package:mint/presentation/page/booking/time_selector_screen.dart';
import 'package:mint/presentation/page/checkout/add_card_screen.dart';
import 'package:mint/presentation/page/review/review_session_screen.dart';
import 'package:mint/presentation/page/specialists/filter_page.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/cached_image.dart';
import 'package:mint/theme/palette.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showReviewDialog({
  required BuildContext context,
  required Booking booking,
  required VoidCallback reviewCallback,
}) {
  showDialog<void>(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            context.router.pop();
            showReviewSheet(
              context: context,
              booking: booking,
            );
          },
          child: Text(
            AppLocalizations.of(context)!.yes,
            style: const TextStyle(color: Palette.mainBlue),
          ),
        ),
        CupertinoDialogAction(
          textStyle: const TextStyle(color: Palette.mainBlue),
          isDestructiveAction: true,
          onPressed: () {
            reviewCallback();
            context.router.navigate(const DoctorsRoute());
          },
          child: Text(AppLocalizations.of(context)!.no),
        ),
      ],
      title: Text(AppLocalizations.of(context)!.leaveReview),
      content: Text(
        AppLocalizations.of(context)!.coupleMinutes,
      ),
    ),
  );
}

Future<void> showRemoveFromFavouriteDialog({
  required BuildContext context,
  required VoidCallback removeCallback,
  required String name,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            removeCallback();
            context.router.pop();
          },
          child: Text(
            AppLocalizations.of(context)!.yes,
            style: const TextStyle(color: Palette.mainBlue),
          ),
        ),
        CupertinoDialogAction(
          textStyle: const TextStyle(color: Palette.mainBlue),
          isDestructiveAction: true,
          onPressed: context.router.pop,
          child: Text(AppLocalizations.of(context)!.no),
        ),
      ],
      title: Text(AppLocalizations.of(context)!.favouriteRemove),
      content: Text(
        AppLocalizations.of(context)!.removeDoctor(name.split(' ')[0]),
      ),
    ),
  );
}

class DoctorInfoDelegate extends SliverPersistentHeaderDelegate {
  DoctorInfoDelegate(this.tabBar, this.color);
  final TabBar tabBar;
  final Color color;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: color,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

void showRecoveryDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: context.router.pop,
          child: Text(AppLocalizations.of(context)!.apply),
        ),
        CupertinoDialogAction(
          textStyle: const TextStyle(color: Palette.mainBlue),
          isDestructiveAction: true,
          onPressed: context.router.pop,
          child: Text(
            AppLocalizations.of(context)!.cancel,
            style: const TextStyle(color: Palette.mainBlue),
          ),
        ),
      ],
      title: Text(AppLocalizations.of(context)!.recoverPin),
      content: Text(
        AppLocalizations.of(context)!.recoverPinText,
      ),
    ),
  );
}

void showCardAddSheet(
  BuildContext context, {
  void Function(BankCard card)? callback,
  bool? isNavigatedFromProfile,
}) {
  showMaterialModalBottomSheet<AddCardScreen>(
    useRootNavigator: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          24.r,
        ),
      ),
    ),
    context: context,
    builder: (context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.95,
      child: AddCardScreen(
        isNavigatedFromProfile: isNavigatedFromProfile,
        callback: callback,
      ),
    ),
  );
}

void showDatePickerSheet({
  required BuildContext context,
  required Doctor doctor,
  Booking? booking,
}) {
  showMaterialModalBottomSheet<DateSelector>(
    useRootNavigator: true,
    context: context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          24.r,
        ),
      ),
    ),
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              24.r,
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.67,
        child: DateSelector(
          doctor: doctor,
          booking: booking,
        ),
      );
    },
  );
}

void showReviewSheet({
  required BuildContext context,
  required Booking booking,
}) {
  showMaterialModalBottomSheet<DateSelector>(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          24.r,
        ),
      ),
    ),
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              24.r,
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.95,
        child: ReviewSessionScreen(
          booking: booking,
        ),
      );
    },
  );
}

Future<String?> showFilterBottomSheet({required BuildContext context}) {
  return showMaterialModalBottomSheet<String>(
    useRootNavigator: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
    ),
    context: context,
    builder: (BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: const FilterPage(),
    ),
  );
}

void showTimePickerSheet({
  required BuildContext context,
  required Doctor doctor,
  required DateTime selectedDate,
  Booking? booking,
}) {
  showMaterialModalBottomSheet<TimeSelector>(
    useRootNavigator: true,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(
          24.r,
        ),
      ),
    ),
    context: context,
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: TimeSelector(
          selectedDate: selectedDate,
          doctor: doctor,
          booking: booking,
        ),
      );
    },
  );
}

void showCancelationDialog({
  required BuildContext context,
  required VoidCallback callback,
}) {
  showDialog<void>(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: callback,
          child: Text(
            AppLocalizations.of(context)!.yes,
            style: const TextStyle(color: Palette.mainBlue),
          ),
        ),
        CupertinoDialogAction(
          textStyle: const TextStyle(color: Palette.mainBlue),
          isDestructiveAction: true,
          onPressed: context.router.pop,
          child: Text(AppLocalizations.of(context)!.no),
        ),
      ],
      title: Text(AppLocalizations.of(context)!.sessionCancelation),
      content: Text(
        AppLocalizations.of(context)!.sureCancel,
      ),
    ),
  );
}

void showBookingToast(BuildContext context) {
  Fluttertoast.showToast(
    msg: AppLocalizations.of(context)!.bookingAdded,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
  );
}

void showNotificationStatusToast(BuildContext context) {
  Fluttertoast.showToast(
    msg: AppLocalizations.of(context)!.notificationStatusChange,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
  );
}

extension DateUtils on DateTime {
  bool get isToday {
    final now = DateTime.now();
    return now.day == day && now.month == month && now.year == year;
  }

  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.day == day &&
        tomorrow.month == month &&
        tomorrow.year == year;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.day == day &&
        yesterday.month == month &&
        yesterday.year == year;
  }
}

String formatTime(int seconds) {
  final minutes = seconds ~/ 60;
  final remainingSeconds = seconds % 60;

  final formattedMinutes = minutes.toString().padLeft(2, '0');
  final formattedSeconds = remainingSeconds.toString().padLeft(2, '0');

  return '$formattedMinutes:$formattedSeconds';
}

bool isValidPhoneNumber(String? value) =>
    RegExp(r'^\+38(0\d{9})$').hasMatch(value ?? '');

class CardFormatter extends TextInputFormatter {
  CardFormatter({required this.separator});
  final String separator;
  final int maxDigits = 16;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newString = newValue.text;

    if (newString.replaceAll(separator, '').length > maxDigits) {
      return oldValue;
    }
    final clean = newString.replaceAll(separator, '');
    final buffer = StringBuffer();
    var count = 0;

    for (var i = 0; i < clean.length; i++) {
      if (count % 4 == 0 && count > 0) {
        buffer.write(separator);
      }
      buffer.write(clean[i]);
      count++;
    }

    return newValue.copyWith(
      text: buffer.toString(),
      selection: TextSelection.collapsed(
        offset: newValue.selection.end + buffer.length - newString.length,
      ),
    );
  }
}

bool isValidCardNumber(String input) {
  return CardRegExp.visaPattern.hasMatch(input.replaceAll(' ', '')) ||
      CardRegExp.mastercardPattern.hasMatch(input.replaceAll(' ', ''));
}

bool isValidDate(String input) {
  final pattern = RegExp(r'^(0[1-9]|1[0-2])\/[0-9]{2}$');
  if (!pattern.hasMatch(input)) {
    return false;
  }
  final now = DateTime.now();
  final inputDate = DateFormat('MM/yy').parse(input);
  final currentDate = DateTime(now.year, now.month);

  return !inputDate.isBefore(currentDate);
}

bool isValidCode(String input) {
  final pattern = RegExp(r'^[0-9]{3}$');
  return pattern.hasMatch(input);
}

int boolToInt({required bool isToday}) => isToday ? 1 : 0;

void showZoomedImage(BuildContext context, CachedImage cachedImage) {
  showDialog<Widget>(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: GestureDetector(
          onTap: context.router.pop,
          child: cachedImage,
        ),
      );
    },
  );
}
